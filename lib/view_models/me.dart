import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/facility_worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/domain/user/user_repository.dart';
import 'package:welfarebrothers_for_worker/domain/worker_profile/worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class MeViewModel extends WelfareBrothersViewModelBase {
  IUserRepository _userRepository;
  IWorkerProfileRepository _workerProfileRepository;
  IFacilityWorkerProfileRepository _facilityWorkerProfileRepository;

  MeViewModel(this._userRepository, this._workerProfileRepository, this._facilityWorkerProfileRepository);

  WelfarebrothersUserProfile profile;
  WorkerProfile workerProfile;
  List<FacilityWorkerProfile> facilityWorkerProfiles;
  Future fetchUser() async {
    loading = true;
    if (appViewModel != null && authenticated && ready) {
      profile = await _userRepository.fetchProfile(appViewModel?.user?.id);
      if (profile != null) {
        try {
          workerProfile = await _workerProfileRepository.fetchMyWorkerProfile(profile.user.id, profile.id);
        } on ApiException {}
      }
    }
    loading = false;
  }

  @override
  Future initialize() async {
    await fetchUser();
  }
}
