import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/components/facility/facility_search_form.dart';
import 'package:welfarebrothers_for_worker/utils/design.dart';
import 'package:welfarebrothers_for_worker/view_models/app.dart';
import 'package:welfarebrothers_for_worker/view_models/auth/facility_linking.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityLinkingScreen extends StatelessWidget {
  List<Widget> _buildWidgetsForLinkingDialog(BuildContext context, FacilityForWorker facility, AppViewModel model) {
    bool facilityAdminAlreadyExists =
        model.facilityUserLinksForFacility.where((element) => element.facilityAdministration.id == facility.id).isNotEmpty;
    bool facilityUserLinkAlreadyExists =
        model.facilityUserLinksForWorker.where((element) => element.facilityAdministration.id == facility.id).isNotEmpty;

    if (facilityUserLinkAlreadyExists) {
      return [Text("すでに申請が行われています。マイページから確認してください"), verticalSpace(size: 24)];
    } else {
      if (facilityAdminAlreadyExists) {
        return [
          FlatButton(
            child: Text("従業員として登録する"),
            onPressed: () async {
              await model.linkToFacilityAsWorker(facility);
              await _linkingConfirmationDialog(context);
            },
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "* 管理者への承認リクエストを送信します",
              style: TextStyle(fontSize: 10, color: Colors.grey.shade400),
            ),
          )
        ];
      } else {
        return [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Align(
              alignment: Alignment.center,
              child: Wrap(children: [
                Text(
                  "* ${facility.tel}への電話による認証を行います",
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
                ),
                Text(
                  "* 施設管理者の方でない場合は、施設管理者の方へ、登録を依頼してください",
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
                ),
              ]),
            ),
          ),
          verticalSpace(size: 24),
          RaisedButton(
            child: Text("管理者として登録する"),
            onPressed: () async {
              showDialog(
                context: context,
                builder: (context) => SimpleDialog(
                  titlePadding: EdgeInsets.all(12),
                  contentPadding: EdgeInsets.all(24),
                  title: Text("認証開始"),
                  children: [
                    Column(
                      children: [
                        Text("冒頭にて数秒、英語のアナウンスが流れます。"),
                        Text("そのアナウンスの後に、1~9のボタンを一つ押してください。"),
                        Text("すると、日本語によるアナウンスが始まります。"),
                        verticalSpace(size: 24),
                        RaisedButton(
                          child: Text("登録を開始する"),
                          onPressed: () async {
                            await model.linkToFacilityAsAdministrator(facility);
                            await _linkingConfirmationDialog(context);
                          },
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ];
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SectionTitle("所属事業所への登録"),
            FlatButton(
                child: Text("スキップ"),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil("/general", (route) => route.isFirst);
                }),
          ],
        ),
        Expanded(
          child: FacilitySearchForm(
            onFacilityTap: (FacilityForWorker facility) => () async {
              try {
                await context.read<FacilityLinkingViewModel>().fetchFacilityUserLinks(facility.id);
              } on ApiException {}
              showDialog(
                context: context,
                builder: (context) => Consumer<AppViewModel>(
                  builder: (context, model, child) => SimpleDialog(
                    contentPadding: EdgeInsets.all(12),
                    children: [
                      verticalSpace(size: 12),
                      ..._buildWidgetsForLinkingDialog(context, facility, model),
                      FlatButton(
                        child: Text("閉じる"),
                        color: Colors.blueGrey.withOpacity(0.5),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }

  _linkingConfirmationDialog(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              title: Text("確認"),
              children: [
                Column(
                  children: [Text("認証・承認の結果はマイページから確認いただけます")],
                ),
                verticalSpace(size: 30),
                FlatButton(
                  child: Text("閉じる"),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil("/general", (route) => false);
                  },
                )
              ],
            ));
  }
}
