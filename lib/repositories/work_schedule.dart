import 'package:welfarebrothers_for_worker/domain/work_schedule/work_schedule.dart';
import 'package:welfarebrothers_for_worker/domain/work_schedule/work_schedule_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class WorkScheduleApiRepository extends IWorkScheduleRepository {
  final WelfarebrothersApiClient _client;
  WorkScheduleApiRepository(this._client);
  @override
  Future<WorkSchedule> createWorkSchedule(String facilityId, WorkSchedule workSchedule) async {
    return await _client.forWorkerApi
        .forWorkerFacilityAdministrationsWorkSchedulesCreate(facilityId, workSchedule.toWritable());
  }

  @override
  Future<WorkSchedule> fetchWorkSchedule(String facilityId, int workScheduleId) async {
    return await _client.forWorkerApi.forWorkerFacilityAdministrationsWorkSchedulesRead(facilityId, workScheduleId);
  }

  @override
  Future<List<WorkScheduleSummary>> fetchWorkSchedules(String facilityId) async {
    return await _client.forWorkerApi.forWorkerFacilityAdministrationsWorkSchedulesList(facilityId);
  }
}
