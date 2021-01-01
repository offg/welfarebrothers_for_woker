import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';

class WelfareBrothersViewModelBase extends ChangeNotifier {
  bool _loading;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  WelfarebrothersApiClient _client;
  WelfarebrothersApiClient get client => _client;
  WelfareBrothersViewModelBase() : _client = WelfarebrothersApiClient();

  Future initialize() async {}
}
