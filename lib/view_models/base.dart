import 'package:flutter/material.dart';

class WelfareBrothersViewModelBase extends ChangeNotifier {
  bool _loading;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future initialize() async {}
}
