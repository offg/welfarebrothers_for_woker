import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/config/locator.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/home.dart';
import 'package:welfarebrothers_for_worker/view_models/app.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_administration.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/welfarebrothers_theme.dart';

import 'domain/facility_worker_profile_repository.dart';
import 'domain/role_repository.dart';

Future main() async {
  await setUp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => FacilityAdministrationViewModel()..initialize(),
    ),
    ChangeNotifierProvider(
      create: (_) => AppViewModel(locator<IRoleRepository>())..initialize(),
    ),
    ChangeNotifierProvider(
      create: (_) => FacilityWorkerProfileViewModel(locator<IFacilityWorkerProfileRepository>())..initialize(),
    ),
  ], child: WelfareBrothersForWorkerApp()));
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
      locale: const Locale("ja"),
      supportedLocales: const [
        const Locale("en"),
        const Locale("ja"),
      ],
      home: HomeScreen(),
    );
  }
}
