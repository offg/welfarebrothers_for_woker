import 'package:welfarebrothers_for_worker/domain/facility_administration/facility_administration_repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityAdministrationViewModel extends WelfareBrothersViewModelBase {
  IFacilityAdministrationRepository _facilityAdministrationRepository;
  List<FacilityAdministration> facilityAdministrations;
  FacilityAdministration currentFacilityAdministration;
  FacilityAdministrationViewModel(this._facilityAdministrationRepository);

  @override
  Future initialize() async {
    facilityAdministrations = [
      FacilityAdministration(facilityId: "sample001")
        ..id = "sample001"
        ..facility = Facility(id: "sample001", name: "サンプルデイ")
    ];
    currentFacilityAdministration = facilityAdministrations.first;
    notifyListeners();
  }

  Future fetchFacilityAdministrations() async {
    await _facilityAdministrationRepository.fetchFacilityAdministrations();
  }
}
