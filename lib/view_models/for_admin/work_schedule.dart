import 'package:welfarebrothers_for_worker/domain/work_schedule/work_schedule_repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class WorkScheduleViewModel extends FacilityResourceViewModelBase {
  final IWorkScheduleRepository _repository;
  WorkScheduleViewModel(this._repository);

  FacilityAdministration get currentFacility => facilityAdministrationViewModel.currentFacilityAdministration;

  List<WorkScheduleSummary> workSchedules;

  WorkScheduleSummary currentWorkSchedule;
  WorkSchedule workSchedule;

  Future initializeWithWorkSchedule(WorkScheduleSummary workSchedule) async {
    loading = true;
    currentWorkSchedule = workSchedule;
    await _fetchWorkSchedule();
    loading = false;
  }

  @override
  Future initialize() async {
    loading = true;
    await super.initialize();
    await _fetchWorkSchedules();
    loading = false;
  }

  Future _fetchWorkSchedules() async {
    if (!ready) return;
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
