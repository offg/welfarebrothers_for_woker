import 'package:welfarebrothers_for_worker/view_models/base.dart';

class FacilityCoordinationViewModel extends WelfareBrothersViewModelBase {
  @override
  Future initialize() async {
    await Future.delayed(Duration(milliseconds: 500));
    return;
  }
}
