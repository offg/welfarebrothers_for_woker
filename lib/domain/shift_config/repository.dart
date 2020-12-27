import 'package:welfarebrothers_for_worker/domain/repository.dart';

import './shift_config.dart';

abstract class IShiftConfigRepository implements IRepository {
  Future<ShiftConfig> fetchShiftConfigForFacility(String facilityId);
  Future<ShiftConfig> updateShiftConfig(String facilityId, int shiftConfigId, ShiftConfig shiftConfig);
}
