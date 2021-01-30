import 'package:welfarebrothers_for_worker/domain/facility_availability/facility_availability_repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityAvailabilityViewModel extends FacilityResourceViewModelBase {
  final IFacilityAvailabilityRepository _repository;
  FacilityAvailabilityViewModel(this._repository);

  FacilityAdministration get facilityAdministration => facilityAdministrationViewModel.currentFacilityAdministration;
  FacilityAvailability facilityAvailability;

  @override
  Future initialize() async {
    loading = true;
    await super.initialize();
    await _fetchFacilityAvailability();
    loading = false;
  }

  Future _fetchFacilityAvailability() async {
    if (!ready) return;
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
