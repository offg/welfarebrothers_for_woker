import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/logo.dart';
import 'package:welfarebrothers_for_worker/utils/design.dart';
import 'package:welfarebrothers_for_worker/utils/input_decoration.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          verticalSpace(size: size.height * 0.1),
          Logo(),
          Padding(
            padding: const EdgeInsets.all(52.0),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextFormField(decoration: inputDecoration(context, "姓")),
                    TextFormField(decoration: inputDecoration(context, "名")),
                    TextFormField(
                      decoration: inputDecoration(
                        context,
                        "ユーザーID",
                        hintText: "半角のアルファベット、数字、記号が使用出来ます",
                      ),
                    ),
                    TextFormField(
                      decoration: inputDecoration(context, "パスワード", hintText: "8文字以上で設定してください"),
                    ),
                    verticalSpace(size: 40),
                    RaisedButton(
                      child: Text("登録"),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/facility_registration");
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
        ],
      )),
    );
  }
}
