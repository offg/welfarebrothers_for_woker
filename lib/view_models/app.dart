import 'package:flutter/foundation.dart';
import 'package:welfarebrothers_for_worker/config/locator.dart';
import 'package:welfarebrothers_for_worker/domain/auth/auth_repository.dart';
import 'package:welfarebrothers_for_worker/domain/role/role_repository.dart';
import 'package:welfarebrothers_for_worker/domain/user/user_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class AppViewModel extends ChangeNotifier {
  IRoleRepository _roleRepository;
  IUserRepository _userRepository;
  IAuthRepository _authRepository;
  AppViewModel(this._roleRepository, this._authRepository, this._userRepository);

  WelfarebrothersTokenClaims token;
  User user;
  bool get authenticated => token?.access?.isNotEmpty ?? false;

  List<Role> roles = new List<Role>();
  Map<String, Role> roleById;

  Future initialize() async {
    loading = true;
    await _tryInitializeAuthToken();
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

  bool _loading;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }
}
