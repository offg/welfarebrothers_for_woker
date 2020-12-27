import 'package:welfarebrothers_for_worker/domain/shift_config/repository.dart';
import 'package:welfarebrothers_for_worker/domain/shift_config/shift_config.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';

class ShiftConfigViewModel extends WelfareBrothersViewModelBase {
  IShiftConfigRepository _repository;
  ShiftConfigViewModel(this._repository);

  ShiftConfig shiftConfig;

  Future updateShiftConfig(ShiftConfig shiftConfig) async {
    assert(shiftConfig.id != null);
    loading = true;
    var updatedShiftConfig = await _repository.updateShiftConfig(shiftConfig.facilityId, shiftConfig.id, shiftConfig);
    shiftConfig = updatedShiftConfig;
    loading = false;
  }
}
