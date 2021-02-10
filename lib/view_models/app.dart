import 'package:flutter/foundation.dart';
import 'package:welfarebrothers_for_worker/config/locator.dart';
import 'package:welfarebrothers_for_worker/domain/auth/auth_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility_user_link/repository.dart';
import 'package:welfarebrothers_for_worker/domain/role/role_repository.dart';
import 'package:welfarebrothers_for_worker/domain/user/user_repository.dart';
import 'package:welfarebrothers_for_worker/domain/worker_profile/worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class AppViewModel extends ChangeNotifier {
  IRoleRepository _roleRepository;
  IUserRepository _userRepository;
  IAuthRepository _authRepository;
  IWorkerProfileRepository _workerProfileRepository;
  IFacilityUserLinkRepository _facilityUserLinkRepository;
  AppViewModel(this._roleRepository, this._authRepository, this._userRepository, this._workerProfileRepository,
      this._facilityUserLinkRepository);

  WelfarebrothersTokenClaims token;
  User user;
  WelfarebrothersUserProfile profile;

  bool _loading;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  bool get authenticated => token?.access?.isNotEmpty ?? false;

  List<Role> roles = new List<Role>();
  Map<String, Role> roleById;
  WorkerProfile workerProfile;

  List<FacilityUserLinkType> facilityUserLinkTypes;
  List<FacilityUserLink> facilityUserLinksForFacility = new List();
  List<FacilityUserLink> facilityUserLinksForWorker = new List();

  Future initialize() async {
    loading = true;
    await _tryInitializeAuthToken();
    await fetchFacilityUserLinkTypes();
    await fetchRoles();
    loading = false;
  }

  Future fetchRoles() async {
    loading = true;
    this.roles = await _roleRepository.listRoles();
    this.roleById = Map<String, Role>.fromEntries(this.roles.map((e) => MapEntry(e.id, e)));
    loading = false;
  }

  Future _tryInitializeAuthToken() async {
    token = await _authRepository.loadAuthToken();
    if (token != null) {
      _setToken();
      await _initializeDataWithAuth();
    }
  }

  Future _initializeDataWithAuth() async {
    this.user = await _userRepository.fetchUser();
    this.profile = await _userRepository.fetchProfile(user.id);
    this.workerProfile = await _workerProfileRepository.fetchMyWorkerProfile(this.user.id, this.profile.id);
    await fetchFacilityUserLinksForWorker();
  }

  _setToken() {
    locator<WelfarebrothersApiClient>().apiClient.addDefaultHeader("Authorization", "Bearer ${token.access}");
  }

  Future<bool> signOut() async {
    token = null;
    await _authRepository.removeAuthToken();
    notifyListeners();
    return true;
  }

  Future<bool> signUp(String username, String password, String firstName, String lastName) async {
    loading = true;
    var user = await _userRepository.createUser(username, password);
    var userProfile = await _userRepository
        .createProfile(WelfarebrothersUserProfile(userId: user.id.toString(), firstName: firstName, lastName: lastName));
    this.user = user;
    this.profile = userProfile;
    this.workerProfile = await _workerProfileRepository.createMyWorkerProfile(user.id, profile.id);
    await this.signIn(username, password);
    loading = false;
    return this.user != null && this.profile != null;
  }

  Future<bool> signIn(String username, String password) async {
    loading = true;
    var claimsForWrite = WelfarebrothersTokenClaimsForWrite(username: username, password: password);
    token = await _authRepository.createAuthToken(claimsForWrite);
    _setToken();
    await _authRepository.saveAuthToken(token);
    await _initializeDataWithAuth();
    user = await _userRepository.fetchUser();
    loading = false;
    return true;
  }

  Future fetchFacilityUserLinkTypes() async {
    loading = true;
    facilityUserLinkTypes = await _facilityUserLinkRepository.fetchFacilityUserLinkTypes();
    loading = false;
  }

  Future fetchFacilityUserLinksForWorker() async {
    if (authenticated && workerProfile != null)
      facilityUserLinksForWorker =
          await _facilityUserLinkRepository.fetchFacilityUserLinks(workerProfileId: workerProfile.id);
  }

  Future fetchFacilityUserLinks(String facilityId) async {
    loading = true;
    facilityUserLinksForFacility = await _facilityUserLinkRepository.fetchFacilityUserLinks(facilityId: facilityId);
    await fetchFacilityUserLinksForWorker();
    loading = false;
  }

  FacilityUserLink _createFacilityUserLinkFor(FacilityForWorker facility, String type) => FacilityUserLink(
        facilityAdministration: FacilityAdministration(
          id: facility.id,
          facilityId: facility.id,
          facility: facility,
        ),
        type: facilityUserLinkTypes.singleWhere((element) => element.id == type),
        state: FacilityUserLinkState(id: "pending"),
        workerProfile: workerProfile,
      );

  Future linkToFacilityAsAdministrator(FacilityForWorker facility) async {
    loading = true;
    await _facilityUserLinkRepository.createFacilityUserLink(_createFacilityUserLinkFor(facility, "admin"));
    await fetchFacilityUserLinks(facility.id);
    loading = false;
  }

  Future linkToFacilityAsWorker(FacilityForWorker facility) async {
    loading = true;
    await _facilityUserLinkRepository.createFacilityUserLink(_createFacilityUserLinkFor(facility, "worker"));
    await fetchFacilityUserLinks(facility.id);
    loading = false;
  }
}
