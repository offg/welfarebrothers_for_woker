import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/facility_worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/domain/user/user_repository.dart';
import 'package:welfarebrothers_for_worker/domain/worker_profile/worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/view_models/app.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class MeViewModel extends WelfareBrothersViewModelBase {
  AppViewModel _appViewModel;
  IUserRepository _userRepository;
  IWorkerProfileRepository _workerProfileRepository;
  IFacilityWorkerProfileRepository _facilityWorkerProfileRepository;

  MeViewModel(
    this._userRepository,
    this._workerProfileRepository,
    this._facilityWorkerProfileRepository, {
    AppViewModel appViewModel,
  }) : this._appViewModel = appViewModel;

  WelfarebrothersUserProfile profile;
  WorkerProfile workerProfile;
  List<FacilityWorkerProfile> facilityWorkerProfiles;

  @override
  Future initialize() async {
    loading = true;
    profile = await _userRepository.fetchProfile(_appViewModel.user.id);
    workerProfile = await _workerProfileRepository.fetchMyWorkerProfile(profile.user.id, profile.id);

    loading = false;
  }
}
