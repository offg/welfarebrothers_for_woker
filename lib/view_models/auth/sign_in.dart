import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';

class SignInViewModel extends WelfareBrothersViewModelBase {
  SignInViewModel()
      : usernameController = TextEditingController(),
        passwordController = TextEditingController();
  TextEditingController usernameController;
  TextEditingController passwordController;
  Future<bool> signIn() async {
    var succeed = await appViewModel.signIn(usernameController.text, passwordController.text);
    if (succeed) {
      usernameController.clear();
      passwordController.clear();
    }
    return succeed;
  }
}
