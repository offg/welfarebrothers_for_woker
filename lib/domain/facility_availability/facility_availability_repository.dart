import 'package:welfarebrothers_for_worker/domain/repository.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

abstract class IFacilityAvailabilityRepository extends IRepository {
  Future<FacilityAvailability> fetchFacilityAvailability(String facilityId);
  Future<FacilityAvailability> createFacilityAvailability(
    String facilityId,
    FacilityAvailability facilityAvailability,
  );
  Future<FacilityAvailability> updateFacilityAvailability(
    String facilityId,
    int facilityAvailabilityId,
    FacilityAvailability facilityAvailability,
  );
  Future deleteFacilityAvailability(String facilityId, int facilityAvailabilityId);
}
