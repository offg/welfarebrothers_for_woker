import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/components/facility/facility_search_form.dart';
import 'package:welfarebrothers_for_worker/utils/design.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityRegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SectionTitle("所属事業所への登録"),
        FacilitySearchForm(
          onFacilityTap: (FacilityForWorker facility) => () {
            showDialog(
              context: context,
              builder: (_context) => SimpleDialog(
                contentPadding: EdgeInsets.all(12),
                children: [
                  verticalSpace(size: 12),
                  FlatButton(
                    child: Text("管理者として登録する"),
                    onPressed: () {},
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "* 電話による認証を行います",
                      style: TextStyle(fontSize: 10, color: Colors.grey.shade400),
                    ),
                  ),
                  verticalSpace(size: 12),
                  FlatButton(
                    child: Text("従業員として登録する"),
                    onPressed: () {},
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "* 管理者への承認リクエストを送信します",
                      style: TextStyle(fontSize: 10, color: Colors.grey.shade400),
                    ),
                  ),
                  verticalSpace(size: 12),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      child: Text("閉じる"),
                      elevation: 0,
                      color: Colors.blueGrey.withOpacity(0.5),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ]),
    );
  }
}
