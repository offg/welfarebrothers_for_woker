import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/config/locator.dart';
import 'package:welfarebrothers_for_worker/domain/area/area_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility/care_service_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility/facility_repository.dart';
import 'package:welfarebrothers_for_worker/screens/facility_registration.dart';
import 'package:welfarebrothers_for_worker/screens/sign_in.dart';
import 'package:welfarebrothers_for_worker/screens/sign_up.dart';
import 'package:welfarebrothers_for_worker/view_models/app.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_search_form.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_administration.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_availability.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/shift_config.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/work_schedule.dart';
import 'package:welfarebrothers_for_worker/view_models/for_caremanager/coordination_request.dart';
import 'package:welfarebrothers_for_worker/view_models/for_caremanager/facility_coordination.dart';
import 'package:welfarebrothers_for_worker/view_models/for_caremanager/facility_search.dart';
import 'package:welfarebrothers_for_worker/welfarebrothers_theme.dart';

import 'domain/facility_availability/facility_availability_repository.dart';
import 'domain/facility_worker_profile/facility_worker_profile_repository.dart';
import 'domain/role/role_repository.dart';
import 'domain/shift_config/shift_config_repository.dart';
import 'domain/work_schedule/work_schedule_repository.dart';

Future main() async {
  await setUp();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => FacilityAdministrationViewModel()..initialize(),
      ),
      ChangeNotifierProvider(
        create: (_) => AppViewModel(locator<IRoleRepository>())..initialize(),
      ),
      ChangeNotifierProvider(
        create: (_) => FacilityWorkerProfileViewModel(locator<IFacilityWorkerProfileRepository>())..initialize(),
      ),
      ChangeNotifierProvider(
        create: (_) => ShiftConfigViewModel(locator<IShiftConfigRepository>())..initialize(),
      ),
      ChangeNotifierProvider(
        create: (_) => WorkScheduleViewModel(locator<IWorkScheduleRepository>())..initialize(),
      ),
      ChangeNotifierProvider(
        create: (_) => FacilityAvailabilityViewModel(locator<IFacilityAvailabilityRepository>())..initialize(),
      ),

      // for care manager
      ChangeNotifierProvider(
        create: (_) => FacilityCoordinationViewModel()..initialize(),
      ),
      ChangeNotifierProvider(
        create: (_) => FacilitySearchViewModel(locator<IFacilityRepository>())..initialize(),
      ),
      ChangeNotifierProvider(
        create: (_) => CoordinationRequestViewModel()..initialize(),
      ),
      ChangeNotifierProvider(
        create: (_) => FacilitySearchFormViewModel(
          locator<IAreaRepository>(),
          locator<ICareServiceRepository>(),
          locator<IFacilityRepository>(),
        )..initialize(),
      ),
    ], child: WelfareBrothersForWorkerApp()),
  );
}

class WelfareBrothersForWorkerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget home = ForCaremanagerHomeScreen();
    // Widget home = ForAdminHomeScreen();
    Widget home = SignInScreen();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: welfareBrothersTheme,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      routes: {
        '/sign_in': (_) => SignInScreen(),
        '/sign_up': (_) => SignUpScreen(),
        '/facility_registration': (_) => FacilityRegistrationScreen(),
      },
      locale: const Locale("ja"),
      supportedLocales: const [
        const Locale("en"),
        const Locale("ja"),
      ],
      home: home,
    );
  }
}
