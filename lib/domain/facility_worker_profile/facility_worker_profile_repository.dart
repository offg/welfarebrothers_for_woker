import 'package:welfarebrothers_for_worker_api_client/api.dart';

import '../repository.dart';

abstract class IFacilityWorkerProfileRepository implements IRepository {
  Future<List<FacilityWorkerProfile>> fetchFacilityWorkerProfiles(
    String facilityId,
  );
  Future<FacilityWorkerProfile> fetchFacilityWorkerProfile(
    String facilityId,
    int facilityWorkerProfileId,
  );
  Future<FacilityWorkerProfile> createFacilityWorkerProfile(
    String facilityId,
    FacilityWorkerProfile facilityWorkerProfile,
  );
  Future<FacilityWorkerProfile> updateFacilityWorkerProfile(
    String facilityId,
    int facilityWorkerProfileId,
    FacilityWorkerProfile facilityWorkerProfile,
  );
  Future deleteFacilityWorkerProfile(
    String facilityId,
    int facilityWorkerProfileId,
  );

  Future<WorkingHoursConfig> createWorkingHoursConfig(
    String facilityId,
    int facilityWorkerProfileId,
    WorkingHoursConfig workingHoursConfig,
  );
  Future<WorkingHoursConfig> updateWorkingHoursConfig(
    String facilityId,
    int facilityWorkerProfileId,
    int workingHoursConfigId,
    WorkingHoursConfig workingHoursConfig,
  );
  Future deleteWorkingHoursConfig(
    String facilityId,
    int facilityWorkerProfileId,
    int workingHoursConfigId,
  );

  Future<DayOffRequest> createDayOffRequest(
    String facilityId,
    int facilityWorkerProfileId,
    DayOffRequest dayOffRequest,
  );
  Future<DayOffRequest> updateDayOffRequest(
    String facilityId,
    int facilityWorkerProfileId,
    int dayOffRequestId,
    DayOffRequest dayOffRequest,
  );
  Future deleteDayOffRequest(
    String facilityId,
    int facilityWorkerProfileId,
    int dayOffRequestId,
  );
}
