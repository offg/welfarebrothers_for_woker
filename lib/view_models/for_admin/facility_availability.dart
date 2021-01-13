import 'package:welfarebrothers_for_worker/domain/facility_availability/facility_availability_repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityAvailabilityViewModel extends WelfareBrothersViewModelBase {
  final IFacilityAvailabilityRepository _repository;
  FacilityAvailabilityViewModel(this._repository);

  FacilityAdministration facilityAdministration;
  FacilityAvailability facilityAvailability;

  @override
  Future initialize() async {
    return super.initialize();
  }

  Future initializeWithFacilityAdministration(FacilityAdministration facilityAdministration) async {
    loading = true;
    this.facilityAdministration = facilityAdministration;
    await _fetchFacilityAvailability();
    loading = false;
  }

  Future _fetchFacilityAvailability() async {
    loading = true;
    facilityAvailability = await _repository.fetchFacilityAvailability(facilityAdministration.facilityId);
    loading = false;
  }

  Future updateOrCreateFacilityAvailability(FacilityAvailability facilityAvailability) async {
    loading = true;
    if (facilityAvailability.id == null) {
      this.facilityAvailability =
          await _repository.createFacilityAvailability(facilityAdministration.facilityId, facilityAvailability);
    } else {
      this.facilityAvailability = await _repository.updateFacilityAvailability(
          facilityAdministration.facilityId, facilityAvailability.id, facilityAvailability);
    }
    loading = false;
  }
}
