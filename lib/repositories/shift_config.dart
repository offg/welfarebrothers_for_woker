import 'package:welfarebrothers_for_worker/domain/shift_config_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class ShiftConfigApiRepository extends IShiftConfigRepository {
  WelfarebrothersApiClient _client;
  ShiftConfigApiRepository(this._client);

  _convertRoleAssignmentRequirementForWrite(RoleAssignmentRequirement roleAssignmentRequirement) {
    return RoleAssignmentRequirementForWrite(
      roleId: roleAssignmentRequirement.role.id,
      shiftConfigId: roleAssignmentRequirement.shiftConfigId,
    );
  }

  _convertShiftPatternForWrite(ShiftPattern shiftPattern) {
    return ShiftPatternForWrite(
      shiftConfigId: shiftPattern.shiftConfigId,
      timeFrom: shiftPattern.timeFrom,
      timeTo: shiftPattern.timeTo,
      symbol: shiftPattern.symbol,
      name: shiftPattern.name,
    );
  }

  @override
  Future<RoleAssignmentRequirement> createRoleAssignmentRequirement(
    String facilityId,
    int shiftConfigId,
    RoleAssignmentRequirement roleAssignmentRequirement,
  ) async {
    return await _client.forWorkerApi.forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsCreate(
      facilityId,
      shiftConfigId.toString(),
      _convertRoleAssignmentRequirementForWrite(roleAssignmentRequirement),
    );
  }

  @override
  Future<ShiftConfig> createShiftConfigForFacility(String facilityId) async {
    return await _client.forWorkerApi.forWorkerFacilityAdministrationsShiftConfigCreate(
      facilityId,
      ShiftConfigForWrite(facilityAdministrationId: facilityId),
    );
  }

  @override
  Future<ShiftPattern> createShiftPattern(
    String facilityId,
    int shiftConfigId,
    ShiftPattern shiftPattern,
  ) async {
    return await _client.forWorkerApi.forWorkerFacilityAdministrationsShiftConfigShiftPatternsCreate(
      facilityId,
      shiftConfigId.toString(),
      _convertShiftPatternForWrite(shiftPattern),
    );
  }

  @override
  Future deleteRoleAssignmentRequirement(
    String facilityId,
    int shiftConfigId,
    int roleAssignmentRequirementId,
  ) async {
    await _client.forWorkerApi.forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsDelete(
      facilityId,
      roleAssignmentRequirementId,
      shiftConfigId.toString(),
    );
  }

  @override
  Future<ShiftPattern> deleteShiftPattern(String facilityId, int shiftConfigId, int shiftPatternId) async {
    await _client.forWorkerApi.forWorkerFacilityAdministrationsShiftConfigShiftPatternsDelete(
      facilityId,
      shiftPatternId,
      shiftConfigId.toString(),
    );
  }

  @override
  Future<ShiftConfig> fetchShiftConfigForFacility(String facilityId) async {
    var result = await _client.forWorkerApi.forWorkerFacilityAdministrationsShiftConfigList(facilityId);
    return result.first;
  }

  @override
  Future<RoleAssignmentRequirement> updateRoleAssignmentRequirement(
    String facilityId,
    int shiftConfigId,
    int roleAssignmentRequirementId,
    RoleAssignmentRequirement roleAssignmentRequirement,
  ) async {
    return await _client.forWorkerApi.forWorkerFacilityAdministrationsShiftConfigRoleAssignmentRequirementsUpdate(
      facilityId,
      roleAssignmentRequirementId,
      shiftConfigId.toString(),
      _convertRoleAssignmentRequirementForWrite(roleAssignmentRequirement),
    );
  }

  @override
  Future<ShiftPattern> updateShiftPattern(
    String facilityId,
    int shiftConfigId,
    int shiftPatternId,
    ShiftPattern shiftPattern,
  ) async {
    return await _client.forWorkerApi.forWorkerFacilityAdministrationsShiftConfigShiftPatternsUpdate(
      facilityId,
      shiftPatternId,
      shiftConfigId.toString(),
      _convertShiftPatternForWrite(shiftPattern),
    );
  }
}
