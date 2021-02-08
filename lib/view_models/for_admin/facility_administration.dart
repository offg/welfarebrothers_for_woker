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
    if (ready && authenticated) {
      await fetchFacilityAdministrations();
      setCurrentFacilityAdministration(facilityAdministrations.first);
    }
  }

  setCurrentFacilityAdministration(FacilityAdministration facilityAdministration) {
    this.currentFacilityAdministration = facilityAdministration;
    notifyListeners();
  }

  Future fetchFacilityAdministrations() async {
    this.facilityAdministrations = await _facilityAdministrationRepository.fetchFacilityAdministrations();
  }
}
