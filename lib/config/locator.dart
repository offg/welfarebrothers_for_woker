import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/repository.dart';
import 'package:welfarebrothers_for_worker/domain/shift_config/repository.dart';
import 'package:welfarebrothers_for_worker/repositories/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/repositories/shift_config.dart';
import 'package:welfarebrothers_for_worker/services/api/v0.dart';

final locator = GetIt.instance;

void setUp() {
  final dio = Dio();
  locator.registerSingleton<Dio>(dio);
  locator.registerSingleton<WelfareBrothersApiClientV0>(
    WelfareBrothersApiClientV0(locator<Dio>()),
  );
  locator.registerSingleton<IShiftConfigRepository>(
    ShiftConfigApiRepository(locator<WelfareBrothersApiClientV0>()),
  );
  locator.registerSingleton<IFacilityWorkerProfileRepository>(
      FacilityWorkerProfileApiRepository(locator<WelfareBrothersApiClientV0>()));
  locator.registerSingleton<DateFormat>(DateFormat("yyyy/MM/dd"));
}
