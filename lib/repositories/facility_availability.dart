import 'package:welfarebrothers_for_worker/domain/facility_availability/facility_availability.dart';
import 'package:welfarebrothers_for_worker/domain/facility_availability/facility_availability_repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityAvailabilityApiRepository extends IFacilityAvailabilityRepository {
  final WelfarebrothersApiClient _client;
  FacilityAvailabilityApiRepository(this._client);

  @override
  Future<FacilityAvailability> createFacilityAvailability(
      String facilityId, FacilityAvailability facilityAvailability) async {
    return await _client.forWorkerApi.forWorkerFacilityAdministrationsAvailabilityCreate(
      facilityId,
      facilityAvailability.toWritable(),
    );
  }

  @override
  Future deleteFacilityAvailability(String facilityId, int facilityAvailabilityId) async {
    return await _client.forWorkerApi.forWorkerFacilityAdministrationsAvailabilityDelete(facilityId, facilityAvailabilityId);
  }

  @override
  Future<FacilityAvailability> fetchFacilityAvailability(String facilityId) async {
    var result = await _client.forWorkerApi.forWorkerFacilityAdministrationsAvailabilityList(facilityId);
    return result.isNotEmpty ? result.first : null;
  }

  @override
  Future<FacilityAvailability> updateFacilityAvailability(
      String facilityId, int facilityAvailabilityId, FacilityAvailability facilityAvailability) async {
    return await _client.forWorkerApi.forWorkerFacilityAdministrationsAvailabilityUpdate(
      facilityId,
      facilityAvailabilityId,
      facilityAvailability.toWritable(),
    );
  }
}
