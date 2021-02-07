import 'package:welfarebrothers_for_worker_api_client/api.dart';

import '../repository.dart';

abstract class IWorkerProfileRepository implements IRepository {
  Future<WorkerProfile> fetchMyWorkerProfile(int userId, int userProfileId);
  Future<WorkerProfile> createMyWorkerProfile(int userId, int profileId);
  Future<WorkerProfile> updateMyWorkerProfile(int userId, int workerProfileId, WorkerProfile workerProfile);
}
