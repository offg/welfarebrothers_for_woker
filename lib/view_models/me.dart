import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class MeViewModel extends WelfareBrothersViewModelBase {
  WelfarebrothersUserProfile welfarebrothersUserProfile;
  WorkerProfile workerProfile;

  @override
  Future initialize() async {
    loading = true;
    var result = await client.forWorkerApi.forWorkerUserProfileWorkerProfileList("3");
    workerProfile = result.first;
    welfarebrothersUserProfile = workerProfile.userProfile;
    loading = false;
  }
}
