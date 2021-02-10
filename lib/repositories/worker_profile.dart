import 'package:welfarebrothers_for_worker/domain/worker_profile/worker_profile.dart';
import 'package:welfarebrothers_for_worker/domain/worker_profile/worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class WorkerProfileApiRepository implements IWorkerProfileRepository {
  WelfarebrothersApiClient _client;
  WorkerProfileApiRepository(this._client);

  @override
  Future<WorkerProfile> createMyWorkerProfile(int userId, int userProfileId) async {
    return await _client.forWorkerApi.forWorkerUserProfileWorkerProfileCreate(
        userId.toString(), userProfileId.toString(), WorkerProfileForWrite(userProfileId: userProfileId));
  }

  @override
  Future<WorkerProfile> fetchMyWorkerProfile(int userId, int userProfileId) async {
    var result = await _client.forWorkerApi.forWorkerUserProfileWorkerProfileList(
      userId.toString(),
      userProfileId.toString(),
    );
    return result.first;
  }

  @override
  Future<WorkerProfile> updateMyWorkerProfile(int userId, int workerProfileId, WorkerProfile workerProfile) async {
    return await _client.forWorkerApi.forWorkerUserProfileWorkerProfileUpdate(
      workerProfileId,
      userId.toString(),
      workerProfile.userProfile.id.toString(),
      workerProfile.toWritable(),
    );
  }
}
