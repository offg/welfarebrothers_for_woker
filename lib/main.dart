import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/config/locator.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/home.dart';
import 'package:welfarebrothers_for_worker/welfarebrothers_theme.dart';

void main() {
  setUp();
  runApp(WelfareBrothersForWorkerApp());
}

class WelfareBrothersForWorkerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: welfareBrothersTheme,
      home: HomeScreen(),
    );
  }
}
