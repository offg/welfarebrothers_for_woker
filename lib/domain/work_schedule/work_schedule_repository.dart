import 'package:welfarebrothers_for_worker/domain/repository.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

abstract class IWorkScheduleRepository extends IRepository {
  Future<List<WorkScheduleSummary>> fetchWorkSchedules(String facilityId);
  Future<WorkSchedule> fetchWorkSchedule(String facilityId, int workScheduleId);
  Future<WorkSchedule> createWorkSchedule(String facilityId, WorkSchedule workSchedule);
}
