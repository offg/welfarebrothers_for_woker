import 'package:welfarebrothers_for_worker/view_models/base.dart';

class FacilityAdministrationViewModel extends WelfareBrothersViewModelBase {
  String _currentFacilityId;
  String get currentFacilityId => _currentFacilityId;
  set currentFacilityId(String facilityId) {
    _currentFacilityId = facilityId;
    notifyListeners();
  }

  @override
  Future initialize() async {
    currentFacilityId = "sample001";
  }
}
