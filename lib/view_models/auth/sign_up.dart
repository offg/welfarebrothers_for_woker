import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';

class SignUpViewModel extends WelfareBrothersViewModelBase {
  TextEditingController usernameController;
  TextEditingController passwordController;
  TextEditingController firstNameController;
  TextEditingController lastNameController;
  SignUpViewModel()
      : usernameController = TextEditingController(),
        passwordController = TextEditingController(),
        firstNameController = TextEditingController(),
        lastNameController = TextEditingController();

  _formClear() {
    usernameController.clear();
    passwordController.clear();
    firstNameController.clear();
    lastNameController.clear();
  }

  Future<bool> signUp() async {
    var succeed = await appViewModel.signUp(
      usernameController.text,
      passwordController.text,
      firstNameController.text,
      lastNameController.text,
    );
    if (succeed) {
      _formClear();
    }
    return succeed;
  }
}
