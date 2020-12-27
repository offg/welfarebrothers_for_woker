import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/facility_worker_profile.dart';

import '../repository.dart';

abstract class IFacilityWorkerProfileRepository implements IRepository {
  Future<FacilityWorkerProfile> createFacilityWorkerProfileForFacility(
      String facilityId, FacilityWorkerProfile facilityWorkerProfile);
  Future<FacilityWorkerProfile> fetchMyFacilityWorkerProfile(int facilityWorkerProfileId);

  Future<List<FacilityWorkerProfile>> fetchFacilityWorkerProfilesForFacility(String facilityId);

  Future<FacilityWorkerProfile> fetchFacilityWorkerProfileForFacility(
    String facilityId,
    int facilityWorkerProfileId,
  );
  Future<FacilityWorkerProfile> updateFacilityWorkerProfileForFacility(
    String facilityId,
    int facilityWorkerProfileId,
    FacilityWorkerProfile facilityWorkerProfile,
  );
  Future deleteFacilityWorkerProfileForFacility(
    String facilityId,
    int facilityWorkerProfileId,
  );
}
