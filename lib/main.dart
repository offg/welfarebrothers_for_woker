import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/config/locator.dart';
import 'package:welfarebrothers_for_worker/domain/area/area_repository.dart';
import 'package:welfarebrothers_for_worker/domain/auth/auth_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility/care_service_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility/facility_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility_administration/facility_administration_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility_user_link/repository.dart';
import 'package:welfarebrothers_for_worker/domain/favorite_facility/repository.dart';
import 'package:welfarebrothers_for_worker/domain/user/user_repository.dart';
import 'package:welfarebrothers_for_worker/domain/worker_profile/worker_profile_repository.dart';
import 'package:welfarebrothers_for_worker/screens/auth/facility_linking.dart';
import 'package:welfarebrothers_for_worker/screens/auth/sign_in.dart';
import 'package:welfarebrothers_for_worker/screens/auth/sign_up.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/home.dart';
import 'package:welfarebrothers_for_worker/screens/general/home.dart';
import 'package:welfarebrothers_for_worker/utils/dynamic_route.dart';
import 'package:welfarebrothers_for_worker/view_models/app.dart';
import 'package:welfarebrothers_for_worker/view_models/auth/sign_in.dart';
import 'package:welfarebrothers_for_worker/view_models/auth/sign_up.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_search_form.dart';
import 'package:welfarebrothers_for_worker/view_models/favorite_facility.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_administration.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_availability.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/shift_config.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/work_schedule.dart';
import 'package:welfarebrothers_for_worker/view_models/me.dart';
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
    update: (context, appViewModel, viewModel) => viewModel..setAppViewModel(appViewModel),
  );
}

ListenableProxyProvider<FacilityAdministrationViewModel, T>
    _initFacilityResourceProvider<T extends FacilityResourceViewModelBase>({
  @required ProviderCreator create,
}) {
  return ListenableProxyProvider<FacilityAdministrationViewModel, T>(
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
          locator<IWorkerProfileRepository>(),
          locator<IFacilityUserLinkRepository>(),
        )..initialize(),
      ),
      _initRootProvider<FacilityAdministrationViewModel>(
        create: (_) => FacilityAdministrationViewModel(locator<IFacilityAdministrationRepository>())..initialize(),
      ),
      _initRootProvider<MeViewModel>(
        create: (_) => MeViewModel(
          locator<IUserRepository>(),
          locator<IWorkerProfileRepository>(),
          locator<IFacilityWorkerProfileRepository>(),
        ),
      ),
      _initFacilityResourceProvider<ShiftConfigViewModel>(
        create: (_) => ShiftConfigViewModel(locator<IShiftConfigRepository>())..initialize(),
      ),
      _initFacilityResourceProvider<WorkScheduleViewModel>(
        create: (_) => WorkScheduleViewModel(locator<IWorkScheduleRepository>())..initialize(),
      ),
      _initFacilityResourceProvider<FacilityAvailabilityViewModel>(
        create: (_) => FacilityAvailabilityViewModel(locator<IFacilityAvailabilityRepository>())..initialize(),
      ),
      _initFacilityResourceProvider<FacilityWorkerProfileViewModel>(
        create: (_) => FacilityWorkerProfileViewModel(locator<IFacilityWorkerProfileRepository>())..initialize(),
      ),
      _initRootProvider<FacilitySearchFormViewModel>(
        create: (_) => FacilitySearchFormViewModel(
          locator<IAreaRepository>(),
          locator<ICareServiceRepository>(),
          locator<IFacilityRepository>(),
        )..initialize(),
      ),
      _initRootProvider<SignUpViewModel>(create: (_) => SignUpViewModel()..initialize()),
      _initRootProvider<SignInViewModel>(create: (_) => SignInViewModel()..initialize()),
      _initRootProvider<FavoriteFacilityViewModel>(
          create: (_) => FavoriteFacilityViewModel(locator<IFavoriteFacilityRepository>())),
    ], child: WelfareBrothersForWorkerApp()),
  );
}

class WelfareBrothersForWorkerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'welfarebrothers',
        theme: welfareBrothersTheme,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        routes: {
          '/sign_in': (_) => SignInScreen(),
          '/sign_up': (_) => SignUpScreen(),
          '/facility_linking': (_) => FacilityLinkingScreen(),
          '/facility_admin': (_) => ForAdminHomeScreen(),
          '/general': (_) => HomeScreen(),
        },
        locale: const Locale("ja"),
        supportedLocales: const [
          const Locale("en"),
          const Locale("ja"),
        ],
        home: Consumer<AppViewModel>(builder: (context, model, child) {
          if (model.authenticated)
            return homeForUser(model.user);
          else
            return HomeScreen();
        }));
  }
}
