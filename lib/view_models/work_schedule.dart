import 'package:welfarebrothers_for_worker/domain/work_schedule/work_schedule_repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class WorkScheduleViewModel extends WelfareBrothersViewModelBase {
  final IWorkScheduleRepository _repository;
  WorkScheduleViewModel(this._repository);

  FacilityAdministration currentFacility;

  List<WorkScheduleSummary> workSchedules;

  WorkScheduleSummary currentWorkSchedule;
  WorkSchedule workSchedule;

  Future initializeWithWorkSchedule(WorkScheduleSummary workSchedule) async {
    loading = true;
    currentWorkSchedule = workSchedule;
    await _fetchWorkSchedule();
    loading = false;
  }

  Future initializeWithFacilityAdministration(FacilityAdministration facilityAdministration) async {
    loading = true;
    currentFacility = facilityAdministration;

    await _fetchWorkSchedules();
    loading = false;
  }

  @override
  Future initialize() {
    return super.initialize();
  }

  Future _fetchWorkSchedules() async {
    loading = true;
    this.workSchedules = await _repository.fetchWorkSchedules(currentFacility.id);
    loading = false;
  }

  Future _fetchWorkSchedule() async {
    loading = true;
    this.workSchedule = await _repository.fetchWorkSchedule(currentFacility.id, currentWorkSchedule.id);
    loading = false;
  }
}
