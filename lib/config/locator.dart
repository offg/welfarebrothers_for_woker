import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/domain/shift_config_repository.dart';
import 'package:welfarebrothers_for_worker/repositories/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/repositories/shift_config.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

final locator = GetIt.instance;

Future setUp() async {
  final dio = Dio();
  locator.registerSingleton<Dio>(dio);

  locator.registerSingleton<ApiClient>(ApiClient(basePath: "http://localhost:8000"));
  var apiClient = WelfarebrothersApiClient();
  locator.registerSingleton<WelfarebrothersApiClient>(apiClient);
  locator.registerSingleton<IFacilityWorkerProfileRepository>(FacilityWorkerProfileApiRepository(apiClient));
  locator.registerSingleton<IShiftConfigRepository>(ShiftConfigApiRepository(apiClient));
}
