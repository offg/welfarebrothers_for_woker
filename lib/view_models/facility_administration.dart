import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityAdministrationViewModel extends WelfareBrothersViewModelBase {
  List<FacilityAdministration> facilityAdministrations;
  FacilityAdministration currentFacilityAdministration;

  @override
  Future initialize() async {
    facilityAdministrations = [FacilityAdministration(facility: Facility(id: "sample001", name: "サンプルデイ"))];
    currentFacilityAdministration = facilityAdministrations.first;
    notifyListeners();
  }
}
