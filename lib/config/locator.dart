import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:welfarebrothers_for_worker/domain/facility/facility_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility_availability/facility_availability_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/facility_worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/domain/role/role_repository.dart';
import 'package:welfarebrothers_for_worker/domain/shift_config/shift_config_repository.dart';
import 'package:welfarebrothers_for_worker/domain/work_schedule/work_schedule_repository.dart';
import 'package:welfarebrothers_for_worker/repositories/facility.dart';
import 'package:welfarebrothers_for_worker/repositories/facility_availability.dart';
import 'package:welfarebrothers_for_worker/repositories/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/repositories/role.dart';
import 'package:welfarebrothers_for_worker/repositories/shift_config.dart';
import 'package:welfarebrothers_for_worker/repositories/work_schedule.dart';
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
  locator.registerSingleton<WelfarebrothersApiClient>(apiClient);
  locator.registerSingleton<IRoleRepository>(RoleApiRepository(apiClient));
  locator.registerSingleton<IFacilityWorkerProfileRepository>(FacilityWorkerProfileApiRepository(apiClient));
  locator.registerSingleton<IFacilityAvailabilityRepository>(FacilityAvailabilityApiRepository(apiClient));
  locator.registerSingleton<IShiftConfigRepository>(ShiftConfigApiRepository(apiClient));
  locator.registerSingleton<IWorkScheduleRepository>(WorkScheduleApiRepository(apiClient));
  locator.registerSingleton<IFacilityRepository>(FacilityApiRepository(apiClient));
}
