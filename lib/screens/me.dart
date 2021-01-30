import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/default_avatar.dart';
import 'package:welfarebrothers_for_worker/components/logo.dart';
import 'package:welfarebrothers_for_worker/screens/home.dart';
import 'package:welfarebrothers_for_worker/screens/sign_in.dart';
import 'package:welfarebrothers_for_worker/utils/design.dart';
import 'package:welfarebrothers_for_worker/view_models/app.dart';
import 'package:welfarebrothers_for_worker/view_models/me.dart';

class MeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Logo(),
        leadingWidth: 120,
        toolbarHeight: 70,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Consumer2<AppViewModel, MeViewModel>(
        builder: (context, appModel, meModel, child) {
          return Column(
            children: [
              DefaultAvatar(
                radius: 30,
              ),
              verticalSpace(size: 30),
              if (appModel.authenticated) ..._buildForAuthenticatedUser(context, appModel, meModel),
              if (!appModel.authenticated) ..._buildForGuestUser(context, appModel, meModel),
            ],
          );
        },
      ),
    );
  }

  Widget _buildName(String name) {
    return Text(name);
  }

  Widget _buildNames(String firstName, String lastName) {
    return Row(
      children: [
        _buildName(firstName),
        _buildName(lastName),
        Text("さん"),
      ],
    );
  }

  List<Widget> _buildForGuestUser(BuildContext context, AppViewModel appModel, MeViewModel meModel) {
    return [
      RaisedButton(
        child: Text("ログイン"),
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (BuildContext context) => SignInScreen(),
              ),
              (route) => false);
        },
      )
    ];
  }

  List<Widget> _buildForAuthenticatedUser(BuildContext context, AppViewModel appModel, MeViewModel meModel) {
    return [
      // _buildNames(meModel.profile.lastName, meModel.profile.firstName),
      RaisedButton(
        child: Text("ログアウト"),
        onPressed: () async {
          await appModel.signOut();
          Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen(),
              ),
              (route) => false);
        },
      ),
    ];
  }
}
