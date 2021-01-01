import 'package:welfarebrothers_for_worker_api_client/api.dart';

import 'repository.dart';

abstract class IWorkerProfileRepository implements IRepository {
  WorkerProfile fetchMyWorkerProfile(int userId);
  WorkerProfile createMyWorkerProfile(int userId, WorkerProfile workerProfile);
  WorkerProfile updateMyWorkerProfile(int userId, int workerProfileId, WorkerProfile workerProfile);
}
