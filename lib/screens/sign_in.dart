import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/logo.dart';
import 'package:welfarebrothers_for_worker/utils/design.dart';
import 'package:welfarebrothers_for_worker/utils/input_decoration.dart';

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(decoration: inputDecoration(context, "ユーザーID")),
                    TextFormField(decoration: inputDecoration(context, "パスワード")),
                    verticalSpace(size: 40),
                    RaisedButton(
                      child: Text("ログイン"),
                      onPressed: () {},
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
