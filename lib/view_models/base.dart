import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/view_models/app.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_administration.dart';

class WelfareBrothersViewModelBase extends ChangeNotifier {
  bool _loading;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  AppViewModel _appViewModel;
  AppViewModel get appViewModel => _appViewModel;
  set appViewModel(AppViewModel vm) {
    _appViewModel = vm;
    notifyListeners();
  }

  bool get authenticated => _appViewModel?.token?.access?.isNotEmpty ?? false;

  WelfareBrothersViewModelBase();

  Future initialize() async {}
}

class FacilityResourceViewModelBase extends WelfareBrothersViewModelBase {
  FacilityAdministrationViewModel _facilityAdministrationViewModel;

  set facilityAdministrationViewModel(FacilityAdministrationViewModel value) {
    _facilityAdministrationViewModel = value;
    notifyListeners();
  }

  FacilityAdministrationViewModel get facilityAdministrationViewModel => _facilityAdministrationViewModel;
  bool get ready => facilityAdministrationViewModel.currentFacilityAdministration != null;
}
