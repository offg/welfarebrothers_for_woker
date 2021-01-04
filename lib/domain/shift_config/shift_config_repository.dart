import 'package:welfarebrothers_for_worker/domain/repository.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

abstract class IShiftConfigRepository implements IRepository {
  Future<ShiftConfig> fetchShiftConfigForFacility(String facilityId);
  Future<ShiftConfig> createShiftConfigForFacility(String facilityId);

  Future<ShiftPattern> createShiftPattern(
    String facilityId,
    int shiftConfigId,
    ShiftPattern shiftPattern,
  );
  Future<ShiftPattern> updateShiftPattern(
    String facilityId,
    int shiftConfigId,
    int shiftPatternId,
    ShiftPattern shiftPattern,
  );
  Future deleteShiftPattern(
    String facilityId,
    int shiftConfigId,
    int shiftPatternId,
  );

  Future<RoleAssignmentRequirement> createRoleAssignmentRequirement(
    String facilityId,
    int shiftConfigId,
    RoleAssignmentRequirement roleAssignmentRequirement,
  );
  Future<RoleAssignmentRequirement> updateRoleAssignmentRequirement(
    String facilityId,
    int shiftConfigId,
    int roleAssignmentRequirementId,
    RoleAssignmentRequirement roleAssignmentRequirement,
  );
  Future deleteRoleAssignmentRequirement(
    String facilityId,
    int shiftConfigId,
    int roleAssignmentRequirementId,
  );
}
