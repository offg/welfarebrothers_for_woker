import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/domain/shift/shift.dart';
import 'package:welfarebrothers_for_worker/domain/shift_config/shift_config.dart';
import 'package:welfarebrothers_for_worker/domain/worker_profile/worker_profile.dart';
import 'package:welfarebrothers_for_worker/services/api/client.dart';

part 'v0.g.dart';

@RestApi(baseUrl: "http://localhost:8000/api/v0/")
abstract class WelfareBrothersApiClientV0 {
  factory WelfareBrothersApiClientV0(Dio dio, {String baseUrl}) => _WelfareBrothersApiClientV0(dio, baseUrl: baseUrl);
  // ShiftConfig
  @GET("/facilities/{facilityId}/shift_config")
  Future<WelfareBrothersApiObjectResponse<ShiftConfig>> fetchFacilityShiftConfig(@Path("facilityId") String facilityId);

  @PUT("/facilities/{facilityId}/shift_config")
  Future<WelfareBrothersApiObjectResponse<ShiftConfig>> updateFacilityShiftConfig(
      @Path("facilityId") String facilityId, @Body() ShiftConfig shiftConfig);

  // my WorkerProfile
  @GET("/me")
  Future<WelfareBrothersApiObjectResponse<WorkerProfile>> fetchMyWorkerProfiles();
  @GET("/me/facility_worker_profiles")
  Future<WelfareBrothersApiObjectResponse<FacilityWorkerProfile>> fetchMyFacilityWorkerProfiles();
  @GET("/me/facility_worker_profiles/{facilityWorkerProfileId")
  Future<WelfareBrothersApiObjectResponse<FacilityWorkerProfile>> fetchMyFacilityWorkerProfile(
    @Path("facilityWorkerProfileId") int facilityWorkerProfileId,
  );
  @PUT("/me/facility_worker_profiles/{facilityWorkerProfileId")
  Future<WelfareBrothersApiObjectResponse<FacilityWorkerProfile>> updateMyFacilityWorkerProfile(
    @Path("facilityWorkerProfileId") int facilityWorkerProfileId,
    @Body() FacilityWorkerProfile facilityWorkerProfile,
  );
  @DELETE("/me/facility_worker_profiles/{facilityWorkerProfileId")
  Future deleteMyFacilityWorkerProfile(
    @Path("facilityWorkerProfileId") int facilityWorkerProfileId,
  );

  // FacilityWorkerProfile
  @POST("/facilities/{facilityId}/facility_worker_profiles")
  Future<WelfareBrothersApiObjectResponse<FacilityWorkerProfile>> createFacilityWorkerProfiles(
    @Path("facilityId") String facilityId,
    @Body() FacilityWorkerProfile facilityWorkerProfile,
  );

  @GET("/facilities/{facilityId}/facility_worker_profiles")
  Future<WelfareBrothersApiListResponse<FacilityWorkerProfile>> fetchFacilityWorkerProfiles(
      @Path("facilityId") String facilityId);

  @GET("/facilities/{facilityId}/facility_worker_profiles/{facilityWorkerProfileId}")
  Future<WelfareBrothersApiObjectResponse<FacilityWorkerProfile>> fetchFacilityWorkerProfile(
    @Path("facilityId") String facilityId,
    @Path("facilityWorkerProfileId") int facilityWorkerProfileId,
  );

  @PUT("/facilities/{facilityId}/facility_worker_profiles/{facilityWorkerProfileId}")
  Future<WelfareBrothersApiObjectResponse<FacilityWorkerProfile>> updateFacilityWorkerProfile(
    @Path("facilityId") String facilityId,
    @Path("facilityWorkerProfileId") int facilityWorkerProfileId,
    @Body() FacilityWorkerProfile facilityWorkerProfile,
  );

  @DELETE("/facilities/{facilityId}/facility_worker_profiles/{facilityWorkerProfileId}")
  Future deleteFacilityWorkerProfile(
    @Path("facilityId") String facilityId,
    @Path("facilityWorkerProfileId") int facilityWorkerProfileId,
  );

  // Shift
  @GET("/facilities/{facilityId}/shifts")
  Future<WelfareBrothersApiListResponse<MonthlyShift>> fetchShifts(@Path("facilityId") String facilityId);

  @GET("/facilities/{facilityId}/shifts/new")
  Future<WelfareBrothersApiObjectResponse<MonthlyShift>> fetchAutoScheduledShiftParam(@Path("facilityId") String facilityId);

  @POST("/facilities/{facilityId}/shifts/new")
  Future<WelfareBrothersApiObjectResponse<MonthlyShift>> createAutoScheduledShift(@Path("facilityId") String facilityId);

  @GET("/facilities/{facilityId}/shifts/{shiftId}")
  Future<WelfareBrothersApiObjectResponse<MonthlyShift>> fetchShift(
    @Path("facilityId") String facilityId,
    @Path("shiftId") int shiftId,
  );

  @PUT("/facilities/{facilityId}/shifts/{shiftId}")
  Future<WelfareBrothersApiObjectResponse<MonthlyShift>> updateShift(
    @Path("facilityId") String facilityId,
    @Path("shiftId") int shiftId,
    @Body() MonthlyShift monthlyShift,
  );
}
