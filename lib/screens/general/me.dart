import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/components/default_avatar.dart';
import 'package:welfarebrothers_for_worker/components/logo.dart';
import 'package:welfarebrothers_for_worker/utils/design.dart';
import 'package:welfarebrothers_for_worker/utils/menu.dart';
import 'package:welfarebrothers_for_worker/view_models/app.dart';
import 'package:welfarebrothers_for_worker/view_models/favorite_facility.dart';
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
    if (name == null) return Container();
    return Text(
      name,
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    );
  }

  Widget _buildNames(String firstName, String lastName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildName(firstName),
        _buildName(lastName),
        Text(
          "さん",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  List<Widget> _buildForGuestUser(BuildContext context, AppViewModel appModel, MeViewModel meModel) {
    return [
      RaisedButton(
        child: Text("ログイン"),
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil("/sign_in", (route) => false);
        },
      ),
      FlatButton(
          child: Text("新規登録の方はこちら"),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil("/sign_up", (route) => false);
          }),
    ];
  }

  List<Widget> _buildForAuthenticatedUser(BuildContext context, AppViewModel appModel, MeViewModel meModel) {
    List<Menu> menuList = [
      Menu(
        "お気に入り施設",
        Icons.star_sharp,
        (context, model) => () async {
          print(model);
          await LoadingOverlay.of(context).during(model.initialize());
          Navigator.of(context).pushNamed("/favorite_facility");
        },
      ),
    ];
    return [
      _buildNames(meModel.profile?.lastName, meModel.profile?.firstName),
      verticalSpace(size: 20),
      SingleChildScrollView(
        child: Wrap(
          alignment: WrapAlignment.center,
          direction: Axis.horizontal,
          children: menuList
              .map(
                (menu) => buildMenu<FavoriteFacilityViewModel>(context, menu),
              )
              .toList(),
        ),
      ),
      RaisedButton(
        child: Text("ログアウト"),
        onPressed: () async {
          await appModel.signOut();
          Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil("/general", (router) => false);
        },
      ),
    ];
  }
}
