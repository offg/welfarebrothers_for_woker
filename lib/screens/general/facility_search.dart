import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/components/facility/facility_for_worker_card.dart';
import 'package:welfarebrothers_for_worker/components/facility/facility_search_form.dart';
import 'package:welfarebrothers_for_worker/components/logo.dart';
import 'package:welfarebrothers_for_worker/domain/facility/facility.dart';
import 'package:welfarebrothers_for_worker/utils/design.dart';
import 'package:welfarebrothers_for_worker/view_models/favorite_facility.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilitySearchScreen extends StatelessWidget {
  const FacilitySearchScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Logo(),
        leadingWidth: 120,
        toolbarHeight: 70,
      ),
      body: FacilitySearchForm(
        facilityRenderer: _facilityRenderer,
        onFacilityTap: null,
      ),
    );
  }

  Widget _facilityRenderer(FacilityForWorker facility) {
    return FacilityForWorkerCard(
        facility: facility,
        header: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              facility.name,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Consumer<FavoriteFacilityViewModel>(
              builder: (context, model, child) =>
                  model.authenticated ? favButtonForMember(context, model, facility.asNormal()) : favButtonForGuest(context),
            ),
          ],
        ),
        onFacilityTap: null);
  }

  Widget favButtonForMember(BuildContext context, FavoriteFacilityViewModel model, Facility facility) {
    return IconButton(
        icon: model.hasBeenFavorited(facility) ? Icon(Icons.star_sharp) : Icon(Icons.star_border_sharp),
        iconSize: 16,
        onPressed: () async {
          const duration = Duration(milliseconds: 300);
          var favoriteFacilities = model.favoriteFacilities.where((element) => element.facility.id == facility.id);
          if (favoriteFacilities.isNotEmpty) {
            await LoadingOverlay.of(context).during(model.deleteFavoriteFacility(favoriteFacilities.first));
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("お気に入りから削除しました"),
              duration: duration,
            ));
          } else {
            await LoadingOverlay.of(context).during(model.createFavoriteFacility(facility));
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("お気に入りに追加しました"),
              duration: duration,
            ));
          }
        });
  }

  Widget favButtonForGuest(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.star_border_sharp),
        iconSize: 16,
        onPressed: () {
          var theme = Theme.of(context);
          showDialog(
            context: context,
            builder: (context) => SimpleDialog(
              // titlePadding: EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 20),
              titlePadding: EdgeInsets.all(0),
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(""),
                  IconButton(
                      icon: Icon(
                        Icons.close_sharp,
                      ),
                      color: theme.primaryColor,
                      iconSize: 20,
                      onPressed: () {
                        Navigator.of(context).pop();
                      })
                ],
              ),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("この機能を利用するには"),
                    Text("ログインする必要があります"),
                    verticalSpace(size: 30),
                    RaisedButton(
                      child: Text("ログインする"),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/sign_in");
                      },
                    ),
                    FlatButton(
                      child: Text("新規登録する"),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/sign_up");
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
