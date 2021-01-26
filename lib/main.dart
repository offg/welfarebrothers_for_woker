import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/config/locator.dart';
import 'package:welfarebrothers_for_worker/domain/area/area_repository.dart';
import 'package:welfarebrothers_for_worker/domain/auth/auth_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility/care_service_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility/facility_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility_administration/facility_administration_repository.dart';
import 'package:welfarebrothers_for_worker/domain/user/user_repository.dart';
import 'package:welfarebrothers_for_worker/domain/worker_profile/worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/screens/facility_registration.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/home.dart';
import 'package:welfarebrothers_for_worker/screens/sign_in.dart';
import 'package:welfarebrothers_for_worker/screens/sign_up.dart';
import 'package:welfarebrothers_for_worker/view_models/app.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_search_form.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_administration.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_availability.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/shift_config.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/work_schedule.dart';
import 'package:welfarebrothers_for_worker/view_models/for_caremanager/coordination_request.dart';
import 'package:welfarebrothers_for_worker/view_models/for_caremanager/facility_coordination.dart';
import 'package:welfarebrothers_for_worker/view_models/for_caremanager/facility_search.dart';
import 'package:welfarebrothers_for_worker/view_models/me.dart';
import 'package:welfarebrothers_for_worker/view_models/sign_in.dart';
import 'package:welfarebrothers_for_worker/welfarebrothers_theme.dart';

import 'domain/facility_availability/facility_availability_repository.dart';
import 'domain/facility_worker_profile/facility_worker_profile_repository.dart';
import 'domain/role/role_repository.dart';
import 'domain/shift_config/shift_config_repository.dart';
import 'domain/work_schedule/work_schedule_repository.dart';

typedef WelfareBrothersViewModelBase ProviderCreator(BuildContext context);

ListenableProxyProvider<AppViewModel, T> _initRootProvider<T extends WelfareBrothersViewModelBase>({
  @required ProviderCreator create,
}) {
  return ListenableProxyProvider<AppViewModel, T>(
    create: create,
    update: (context, appViewModel, viewModel) => viewModel..appViewModel = appViewModel,
  );
}

ProxyProvider<FacilityAdministrationViewModel, T> _initFacilityResourceProvider<T extends FacilityResourceViewModelBase>({
  @required ProviderCreator create,
}) {
  return ProxyProvider<FacilityAdministrationViewModel, T>(
    create: create,
    update: (context, facilityAdministrationViewModel, viewModel) =>
        viewModel..facilityAdministrationViewModel = facilityAdministrationViewModel,
  );
}

Future main() async {
  await setUp();
  runApp(
    MultiProvider(providers: [
      ListenableProvider(
        create: (_) => AppViewModel(
          locator<IRoleRepository>(),
          locator<IAuthRepository>(),
          locator<IUserRepository>(),
        )..initialize(),
      ),
      _initRootProvider<FacilityAdministrationViewModel>(
        create: (_) => FacilityAdministrationViewModel(locator<IFacilityAdministrationRepository>())..initialize(),
      ),
      _initRootProvider<FacilityCoordinationViewModel>(
        create: (_) => FacilityCoordinationViewModel()..initialize(),
      ),
      _initRootProvider(
        create: (_) => FacilityWorkerProfileViewModel(locator<IFacilityWorkerProfileRepository>())..initialize(),
      ),
      _initRootProvider(
        create: (_) => MeViewModel(
          locator<IUserRepository>(),
          locator<IWorkerProfileRepository>(),
          locator<IFacilityWorkerProfileRepository>(),
        ),
      ),

      _initFacilityResourceProvider(
        create: (_) => ShiftConfigViewModel(locator<IShiftConfigRepository>())..initialize(),
      ),
      _initFacilityResourceProvider(
        create: (_) => WorkScheduleViewModel(locator<IWorkScheduleRepository>())..initialize(),
      ),
      _initFacilityResourceProvider(
        create: (_) => FacilityAvailabilityViewModel(locator<IFacilityAvailabilityRepository>())..initialize(),
      ),

      // for care manager
      _initRootProvider(
        create: (_) => FacilitySearchViewModel(locator<IFacilityRepository>())..initialize(),
      ),
      _initRootProvider(
        create: (_) => CoordinationRequestViewModel()..initialize(),
      ),
      _initRootProvider(
        create: (_) => FacilitySearchFormViewModel(
          locator<IAreaRepository>(),
          locator<ICareServiceRepository>(),
          locator<IFacilityRepository>(),
        )..initialize(),
      ),
      _initRootProvider<SignInViewModel>(create: (_) => SignInViewModel()..initialize()),
    ], child: WelfareBrothersForWorkerApp()),
  );
}

class WelfareBrothersForWorkerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          '/facility_admin': (_) => ForAdminHomeScreen(),
        },
        locale: const Locale("ja"),
        supportedLocales: const [
          const Locale("en"),
          const Locale("ja"),
        ],
        home: Consumer<AppViewModel>(builder: (context, model, child) {
          if (model.authenticated)
            return ForAdminHomeScreen();
          else
            return SignInScreen();
        }));
  }
}
