import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/logo.dart';
import 'package:welfarebrothers_for_worker/utils/design.dart';
import 'package:welfarebrothers_for_worker/utils/input_decoration.dart';
import 'package:welfarebrothers_for_worker/view_models/auth/sign_up.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Stack(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          verticalSpace(size: size.height * 0.1),
          Padding(
            padding: const EdgeInsets.all(52.0),
            child: Card(
              elevation: 25,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Consumer<SignUpViewModel>(
                  builder: (context, model, child) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        enableSuggestions: false,
                        autocorrect: false,
                        controller: model.lastNameController,
                        decoration: inputDecoration(context, "姓"),
                      ),
                      TextFormField(
                        enableSuggestions: false,
                        autocorrect: false,
                        controller: model.firstNameController,
                        decoration: inputDecoration(context, "名"),
                      ),
                      TextFormField(
                        decoration: inputDecoration(
                          context,
                          "ユーザーID",
                          hintText: "半角のアルファベット、数字、記号が使用出来ます",
                        ),
                        controller: model.usernameController,
                        enableSuggestions: false,
                        autocorrect: false,
                      ),
                      TextFormField(
                        decoration: inputDecoration(context, "パスワード", hintText: "8文字以上で設定してください"),
                        enableSuggestions: false,
                        obscureText: true,
                        controller: model.passwordController,
                        autocorrect: false,
                      ),
                      verticalSpace(size: 40),
                      RaisedButton(
                        child: Text("登録"),
                        onPressed: () async {
                          var succeed = await model.signUp();
                          if (succeed) {
                            Navigator.of(context, rootNavigator: true).pushNamed("/facility_linking");
                          }
                        },
                      ),
                      FlatButton(
                        child: Text("登録済の方はこちら"),
                        onPressed: () {
                          Navigator.of(context).pushNamed("/sign_in");
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
            top: 25,
            left: 0,
            right: 0,
          ),
        ],
      )),
    );
  }
}
