import 'package:welfarebrothers_for_worker/domain/shift_config/repository.dart';
import 'package:welfarebrothers_for_worker/domain/shift_config/shift_config.dart';
import 'package:welfarebrothers_for_worker/services/api/v0.dart';

class ShiftConfigApiRepository extends IShiftConfigRepository {
  WelfareBrothersApiClientV0 _client;
  ShiftConfigApiRepository(this._client);

  @override
  Future<ShiftConfig> fetchShiftConfigForFacility(String facilityId) async {
    var response = await _client.fetchFacilityShiftConfig(facilityId);
    return response.result;
  }

  @override
  Future<ShiftConfig> updateShiftConfig(String facilityId, int shiftConfigId, ShiftConfig shiftConfig) async {
    var response = await _client.updateFacilityShiftConfig(facilityId, shiftConfig);
    return response.result;
  }
}
