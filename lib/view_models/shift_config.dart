import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class ShiftConfigViewModel extends WelfareBrothersViewModelBase {
  ShiftConfig shiftConfig;

  ShiftPatternForWrite _convertShiftPatternForWrite(ShiftPattern shiftPattern) {
    return ShiftPatternForWrite(
      shiftConfigId: shiftPattern.shiftConfigId,
      timeFrom: shiftPattern.timeFrom,
      timeTo: shiftPattern.timeTo,
      symbol: shiftPattern.symbol,
      name: shiftPattern.name,
    );
  }

  Future updateShiftPattern(ShiftPattern shiftPattern) async {
    loading = true;
    var updatedShiftPattern = await client.forWorkerApi.forWorkerFacilityAdministrationsShiftConfigShiftPatternsUpdate(
      shiftConfig.facilityAdministration.facility.id,
      shiftPattern.id,
      shiftPattern.shiftConfigId.toString(),
      _convertShiftPatternForWrite(shiftPattern),
    );
    loading = false;
  }
}
