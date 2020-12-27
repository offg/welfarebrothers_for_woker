import './worker_profile.dart';
import '../repository.dart';

abstract class IWorkerProfileRepository implements IRepository {
  WorkerProfile fetchWorkerProfile();
  WorkerProfile updateWorkerProfile(WorkerProfile workerProfile);
}
