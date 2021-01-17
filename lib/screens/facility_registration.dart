import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/components/facility/facility_search_form.dart';
import 'package:welfarebrothers_for_worker/utils/design.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityRegistrationScreen extends StatefulWidget {
  _FacilityRegistrationScreenState createState() => _FacilityRegistrationScreenState();
}

class _FacilityRegistrationScreenState extends State<FacilityRegistrationScreen> {
  int _prefCode;
  int _cityCode;
  String _categoryGroupId;
  String _categoryId;
  List<String> _facilities;
  @override
  void initState() {
    _prefCode = null;
    _cityCode = null;
    _categoryGroupId = null;
    _categoryId = null;
    _facilities = [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SectionTitle("施設へ登録する"),
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
                  verticalSpace(size: 12),
                  FlatButton(
                    child: Text("従業員として登録する"),
                    onPressed: () {},
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
