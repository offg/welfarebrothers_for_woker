import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:welfarebrothers_for_worker/domain/area/area_repository.dart';
import 'package:welfarebrothers_for_worker/domain/auth/auth_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility/care_service_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility/facility_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility_administration/facility_administration_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility_availability/facility_availability_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility_user_link/repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/facility_worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/domain/favorite_facility/repository.dart';
import 'package:welfarebrothers_for_worker/domain/role/role_repository.dart';
import 'package:welfarebrothers_for_worker/domain/shift_config/shift_config_repository.dart';
import 'package:welfarebrothers_for_worker/domain/user/user_repository.dart';
import 'package:welfarebrothers_for_worker/domain/work_schedule/work_schedule_repository.dart';
import 'package:welfarebrothers_for_worker/domain/worker_profile/worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/repositories/area.dart';
import 'package:welfarebrothers_for_worker/repositories/auth.dart';
import 'package:welfarebrothers_for_worker/repositories/care_service.dart';
import 'package:welfarebrothers_for_worker/repositories/facility.dart';
import 'package:welfarebrothers_for_worker/repositories/facility_administration.dart';
import 'package:welfarebrothers_for_worker/repositories/facility_availability.dart';
import 'package:welfarebrothers_for_worker/repositories/facility_user_link.dart';
import 'package:welfarebrothers_for_worker/repositories/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/repositories/favorite_facility.dart';
import 'package:welfarebrothers_for_worker/repositories/role.dart';
import 'package:welfarebrothers_for_worker/repositories/shift_config.dart';
import 'package:welfarebrothers_for_worker/repositories/user.dart';
import 'package:welfarebrothers_for_worker/repositories/work_schedule.dart';
import 'package:welfarebrothers_for_worker/repositories/worker_profile.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

final locator = GetIt.instance;

Future setUp() async {
  final dio = Dio();
  locator.registerSingleton<Dio>(dio);

  String basePath;
  if (kDebugMode) {
    basePath = "http://localhost:8000";
  } else {
    basePath = "https://welfarebrothers-api-edge.herokuapp.com";
  }

  locator.registerSingleton<ApiClient>(ApiClient(basePath: basePath));
  var apiClient = WelfarebrothersApiClient();
  var secureStorage = FlutterSecureStorage();
  locator.registerSingleton<FlutterSecureStorage>(secureStorage);
  locator.registerSingleton<WelfarebrothersApiClient>(apiClient);
  locator.registerSingleton<IRoleRepository>(RoleApiRepository(apiClient));
  locator.registerSingleton<IAuthRepository>(AuthApiRepository(apiClient, secureStorage));
  locator.registerSingleton<IUserRepository>(UserApiRepository(apiClient));
  locator.registerSingleton<IFacilityAdministrationRepository>(FacilityAdministrationApiRepository(apiClient));
  locator.registerSingleton<IFacilityWorkerProfileRepository>(FacilityWorkerProfileApiRepository(apiClient));
  locator.registerSingleton<IFacilityAvailabilityRepository>(FacilityAvailabilityApiRepository(apiClient));
  locator.registerSingleton<IShiftConfigRepository>(ShiftConfigApiRepository(apiClient));
  locator.registerSingleton<IWorkScheduleRepository>(WorkScheduleApiRepository(apiClient));
  locator.registerSingleton<IFacilityRepository>(FacilityApiRepository(apiClient));
  locator.registerSingleton<IAreaRepository>(AreaApiRepository(apiClient));
  locator.registerSingleton<ICareServiceRepository>(CareServiceApiRepository(apiClient));
  locator.registerSingleton<IWorkerProfileRepository>(WorkerProfileApiRepository(apiClient));
  locator.registerSingleton<IFacilityUserLinkRepository>(FacilityUserLinkApiRepository(apiClient));
  locator.registerSingleton<IFavoriteFacilityRepository>(FavoriteFacilityApiRepository(apiClient));
}
