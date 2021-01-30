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
      FacilityAdministration(facilityId: "a8488eb6-4fa2-42a8-acd3-284842b34fe4")
        ..id = "a8488eb6-4fa2-42a8-acd3-284842b34fe4"
        ..facility = Facility(id: "sample001", name: "サンプルデイ")
    ];
    currentFacilityAdministration = facilityAdministrations.first;
    notifyListeners();
  }

  Future fetchFacilityAdministrations() async {
    await _facilityAdministrationRepository.fetchFacilityAdministrations();
  }
}
