import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/components/logo.dart';
import 'package:welfarebrothers_for_worker/utils/design.dart';
import 'package:welfarebrothers_for_worker/utils/dynamic_route.dart';
import 'package:welfarebrothers_for_worker/utils/input_decoration.dart';
import 'package:welfarebrothers_for_worker/view_models/auth/sign_in.dart';
import 'package:welfarebrothers_for_worker/view_models/me.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(42.0),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Consumer<SignInViewModel>(
                  builder: (context, model, child) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        decoration: inputDecoration(context, "ユーザーID"),
                        enableSuggestions: false,
                        autocorrect: false,
                        controller: model.usernameController,
                      ),
                      TextFormField(
                        decoration: inputDecoration(context, "パスワード"),
                        enableSuggestions: false,
                        obscureText: true,
                        autocorrect: false,
                        controller: model.passwordController,
                      ),
                      verticalSpace(size: 40),
                      RaisedButton(
                        child: Text("ログイン"),
                        onPressed: () async {
                          bool succeed = await model.signIn();
                          if (succeed) {
                            await LoadingOverlay.of(context).during(context.read<MeViewModel>().initialize());
                            Navigator.of(context)
                                .pushNamedAndRemoveUntil(homePathForUser(model.appViewModel.profile.user), (route) => false);
                          }
                        },
                      ),
                      FlatButton(
                        child: Text("新規登録の方はこちら"),
                        onPressed: () {
                          Navigator.of(context).pushNamed("/sign_up");
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: Logo(),
            top: 15,
            left: 0,
            right: 0,
          ),
        ],
      )),
    );
  }
}
