import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:welfarebrothers_for_worker/config/locator.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/home.dart';
import 'package:welfarebrothers_for_worker/welfarebrothers_theme.dart';

Future main() async {
  await setUp();
  // runApp(WelfareBrothersForWorkerApp());
  runApp(MaterialApp(
    title: 'Flutter Demo',
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    theme: welfareBrothersTheme,
    locale: Locale("ja"),
    supportedLocales: const [
      const Locale("en"),
      const Locale("ja"),
    ],
    home: HomeScreen(),
  ));
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
      supportedLocales: const [
        const Locale("en"),
        const Locale("ja"),
      ],
      home: HomeScreen(),
    );
  }
}
