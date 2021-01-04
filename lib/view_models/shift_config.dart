import 'package:welfarebrothers_for_worker/domain/shift_config/shift_config_repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class ShiftConfigViewModel extends WelfareBrothersViewModelBase {
  FacilityAdministration facilityAdministration;
  ShiftConfig shiftConfig;
  IShiftConfigRepository _repository;
  ShiftConfigViewModel(this._repository);

  @override
  Future initialize() async {
    return super.initialize();
  }

  Future initializeWithFacilityAdministration(FacilityAdministration facilityAdministration) async {
    loading = true;
    this.facilityAdministration = facilityAdministration;
    await _fetchShiftConfig();
    loading = false;
  }

  Future _fetchShiftConfig() async {
    if (facilityAdministration == null) return;
    loading = true;
    shiftConfig = await _repository.fetchShiftConfigForFacility(facilityAdministration.id);
    loading = false;
  }

  Future updateOrCreateShiftPattern(String facilityId, ShiftPattern shiftPattern) async {
    loading = true;
    ShiftPattern newObject;
    if (shiftPattern.id == null)
      newObject = await _repository.createShiftPattern(facilityId, shiftPattern.shiftConfigId, shiftPattern);
    else
      newObject =
          await _repository.updateShiftPattern(facilityId, shiftPattern.shiftConfigId, shiftPattern.id, shiftPattern);
    await _fetchShiftConfig();
    loading = false;
  }

  Future updateOrCreateRoleAssignmentRequirement(
      String facilityId, RoleAssignmentRequirement roleAssignmentRequirement) async {
    loading = true;
    RoleAssignmentRequirement newObject;
    if (roleAssignmentRequirement.id == null)
      newObject = await _repository.createRoleAssignmentRequirement(facilityId, shiftConfig.id, roleAssignmentRequirement);
    else
      newObject = await _repository.updateRoleAssignmentRequirement(
          facilityId, shiftConfig.id, roleAssignmentRequirement.id, roleAssignmentRequirement);
    await _fetchShiftConfig();
    loading = false;

    loading = false;
  }
}
