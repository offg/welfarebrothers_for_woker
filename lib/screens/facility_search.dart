import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/facility/availabilities.dart';
import 'package:welfarebrothers_for_worker/components/facility/facility_search_form.dart';
import 'package:welfarebrothers_for_worker/components/logo.dart';
import 'package:welfarebrothers_for_worker/utils/design.dart';
import 'package:welfarebrothers_for_worker/view_models/app.dart';
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
        onFacilityTap: (FacilityForWorker facility) => () async {
          await showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                    children: [
                      RaisedButton(
                        child: Text(facility.name),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  ));
        },
      ),
    );
  }

  Widget _facilityRenderer(FacilityForWorker facility) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    facility.name,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Consumer<AppViewModel>(
                    builder: (context, model, child) => IconButton(
                      icon: Icon(Icons.star_border_sharp),
                      iconSize: 16,
                      onPressed: () async {
                        if (model.authenticated) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("お気に入りに追加しました"),
                          ));
                        } else {
                          const buttonPadding = const EdgeInsets.symmetric(horizontal: 20);
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
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
              verticalSpace(size: 12),
              Text(
                facility.address,
                style: TextStyle(fontSize: 12),
              ),
              verticalSpace(size: 18),
              Availabilities(availableDaysInWeek: facility.availableDaysOfTheWeek),
            ],
          ),
        ),
      ),
    );
  }
}
