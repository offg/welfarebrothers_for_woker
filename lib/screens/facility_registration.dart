import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/app/panel.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/utils/design.dart';

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
      body: Column(
        children: [
          SectionTitle("施設へ登録する"),
          Expanded(
            flex: 1,
            child: Panel(
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: Text("都道府県　　　　　"),
                        value: _prefCode,
                        underline: null,
                        items: [
                          DropdownMenuItem(
                            value: 43,
                            child: Text("熊本県"),
                          ),
                        ],
                        onChanged: (int value) {
                          setState(() {
                            _prefCode = value;
                          });
                        },
                      ),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: _cityCode,
                        hint: Text("市区町村　　　　　"),
                        items: [
                          DropdownMenuItem(
                            value: 2500,
                            child: Text("熊本市中央区"),
                          ),
                          DropdownMenuItem(
                            value: 2501,
                            child: Text("熊本市南区"),
                          ),
                        ],
                        onChanged: (int value) {
                          setState(() {
                            _cityCode = value;
                          });
                        },
                      ),
                    )
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                  DropdownButton(
                    value: _categoryGroupId,
                    hint: Text("サービスカテゴリー"),
                    items: [
                      DropdownMenuItem(
                        value: "0",
                        child: Text("訪問"),
                      ),
                      DropdownMenuItem(
                        value: "1",
                        child: Text("通い"),
                      ),
                    ],
                    onChanged: (String value) {
                      setState(() {
                        _categoryGroupId = value;
                      });
                    },
                  ),
                  DropdownButton(
                    value: _categoryId,
                    hint: Text("サービス　　　　　"),
                    items: [
                      DropdownMenuItem(
                        value: "0",
                        child: Text("訪問リハビリ"),
                      ),
                      DropdownMenuItem(
                        value: "1",
                        child: Text("訪問看護"),
                      ),
                    ],
                    onChanged: (String value) {
                      setState(() {
                        _categoryId = value;
                      });
                    },
                  )
                ]),
                RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.4),
                  child: Text("検索"),
                  onPressed: () {
                    setState(() {
                      _facilities = ["サンプルデイ", "サンプルホーム"];
                    });
                  },
                ),
              ]),
            ),
          ),
          Expanded(
            flex: 2,
            child: _facilities.isEmpty
                ? Container()
                : ListView(
                    children: _facilities
                        .map((e) => ListTile(
                              onTap: () {
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
                              title: Text(e),
                            ))
                        .toList(),
                  ),
          ),
        ],
      ),
    );
  }
}
