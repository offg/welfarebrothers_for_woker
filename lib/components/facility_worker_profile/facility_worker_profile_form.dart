import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/utils/datetime.dart';
import 'package:welfarebrothers_for_worker/view_models/app.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class Panel extends StatelessWidget {
  final Widget child;
  final double padding;
  const Panel({Widget child, double padding})
      : child = child,
        padding = padding ?? 12;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: Colors.blueGrey.withOpacity(0.1),
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: child,
        ));
  }
}

class FacilityWorkerProfileForm extends StatefulWidget {
  final FacilityWorkerProfile facilityWorkerProfile;
  FacilityWorkerProfileForm(this.facilityWorkerProfile);

  @override
  _FacilityWorkerProfileFormState createState() => _FacilityWorkerProfileFormState();
}

class _FacilityWorkerProfileFormState extends State<FacilityWorkerProfileForm> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  SlidableController _slidableController;

  FacilityWorkerProfile _facilityWorkerProfile;
  WorkingHoursConfig _workingHoursConfig;
  TextEditingController _lastNameEditingController;
  TextEditingController _firstNameEditingController;

  @override
  void initState() {
    setState(() {
      super.initState();
      _facilityWorkerProfile = widget.facilityWorkerProfile.clone();
      _workingHoursConfig = _facilityWorkerProfile.workingHoursConfig ??
          WorkingHoursConfig(facilityWorkerProfileId: _facilityWorkerProfile.id);
      _lastNameEditingController = TextEditingController(text: _facilityWorkerProfile.lastName);
      _firstNameEditingController = TextEditingController(text: _facilityWorkerProfile.firstName);
      _slidableController = SlidableController();
    });
    super.initState();
  }

  Future<bool> validate(BuildContext context, DateTime value) async {
    bool duplicated = _facilityWorkerProfile.dayOffRequests.any((element) => dateTimeEq(element.date, value));
    if (duplicated) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("エラー"),
          content: Column(mainAxisSize: MainAxisSize.min, children: [
            Text("同じ日付の休暇希望が存在します。"),
            Text("違う日付で再度登録してください。"),
          ]),
          actions: [
            FlatButton(
                child: Text("確認"),
                onPressed: () {
                  Navigator.of(context).pop();
                })
          ],
        ),
      );
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  _buildFacilityWorkerProfileForm(context),
                  SizedBox(height: 10),
                  _buildDayOffRequestForm(context),
                ],
              ))),
    );
  }

  Widget _buildFacilityWorkerProfileForm(BuildContext context) {
    return Column(children: [
      SectionTitle("基本情報"),
      Panel(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: TextField(
                controller: _lastNameEditingController,
                onChanged: (value) => _facilityWorkerProfile.lastName = value,
                decoration: InputDecoration(labelText: "姓"),
              ),
            ),
            SizedBox(width: 20),
            Flexible(
              child: TextField(
                controller: _firstNameEditingController,
                onChanged: (value) => _facilityWorkerProfile.firstName = value,
                decoration: InputDecoration(labelText: "名"),
              ),
            )
          ],
        ),
      ),
      SizedBox(height: 10),
      SectionTitle("職種"),
      Panel(
        child: Consumer<AppViewModel>(
          builder: (_context, model, child) => ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: context.read<AppViewModel>().roles.length,
              itemBuilder: (context, index) {
                var roles = context.read<AppViewModel>().roles;
                return CheckboxListTile(
                    title: Text(roles[index].name),
                    onChanged: (value) {
                      if (value)
                        _facilityWorkerProfile.addCapability(roles[index]);
                      else
                        _facilityWorkerProfile.removeCapability(roles[index]);
                      setState(() {});
                    },
                    value: _facilityWorkerProfile.capabilities.contains(roles[index]));
              }),
        ),
      ),
      SectionTitle("勤務時間"),
      Panel(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: TextFormField(
                initialValue: _workingHoursConfig.weeklyMaxWorkingHours?.toString() ?? null,
                onChanged: (value) {
                  _workingHoursConfig.weeklyMaxWorkingHours = int.tryParse(value);
                },
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (value) {
                  int valueInt = int.tryParse(value);
                  if (valueInt != null) {
                    return 0 <= valueInt && valueInt <= 24 * 7 ? null : "0〜40の値を入力してください";
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.always,
                decoration: InputDecoration(
                  labelText: "時間/週",
                ),
              ),
            ),
            SizedBox(width: 20),
            Flexible(
              child: TextFormField(
                initialValue: _workingHoursConfig.monthlyMaxWorkingHours?.toString() ?? null,
                onChanged: (value) {
                  _workingHoursConfig.monthlyMaxWorkingHours = int.tryParse(value);
                },
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  int valueInt = int.tryParse(value);
                  if (valueInt != null) {
                    return 0 <= valueInt && valueInt <= 24 * 7 ? null : "0〜168の値を入力してください";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "時間/月",
                ),
              ),
            )
          ],
        ),
      ),
      Consumer<FacilityWorkerProfileViewModel>(
          builder: (_context, model, child) => RaisedButton(
              child: Text("保存"),
              onPressed: () async {
                if (!_formKey.currentState.validate()) return;
                if (_facilityWorkerProfile.capabilities.isEmpty) {
                  await showDialog(
                      context: _context,
                      builder: (context) => AlertDialog(
                            title: Text("エラー"),
                            content: Text("一つ以上の職種を選択してください"),
                            actions: [
                              RaisedButton(
                                child: Text("閉じる"),
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                            ],
                          ));
                  return;
                }
                _facilityWorkerProfile.workingHoursConfig = _workingHoursConfig;
                await LoadingOverlay.of(context).during(model.updateOrCreateFacilityWorkerProfile(_facilityWorkerProfile));
                setState(() {});
              })),
    ]);
  }

  Widget _buildDayOffRequestForm(BuildContext context) {
    return Consumer<FacilityWorkerProfileViewModel>(
      builder: (_context, model, child) => Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SectionTitle("休暇希望"),
          IconButton(
            icon: Icon(Icons.add_rounded),
            onPressed: () async {
              var now = DateTime.now();
              var value = await showDatePicker(
                context: context,
                initialDate: now,
                locale: const Locale("ja"),
                firstDate: DateTime(now.year, now.month - 1),
                lastDate: DateTime(now.year, now.month + 6),
              );
              if (value != null) {
                value = value.add(value.timeZoneOffset);
                bool valid = await validate(_context, value);
                if (valid) {
                  await LoadingOverlay.of(_context).during(model.createDayOffRequest(_facilityWorkerProfile,
                      DayOffRequest(facilityWorkerProfileId: _facilityWorkerProfile.id, date: value)));
                  return;
                }
              }
            },
          ),
        ]),
        _facilityWorkerProfile.dayOffRequests.isNotEmpty
            ? ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _facilityWorkerProfile.dayOffRequests.length,
                itemBuilder: (context, i) {
                  return _buildDayOffRequest(context, model, _facilityWorkerProfile.dayOffRequests[i]);
                })
            : Center(
                child: Text("休暇希望がありません"),
              ),
      ]),
    );
  }

  Widget _buildDayOffRequest(BuildContext context, FacilityWorkerProfileViewModel model, DayOffRequest dayOffRequest) {
    var formatter = DateFormat("yyyy/MM/dd(EE)", "ja");
    return Slidable(
      controller: _slidableController,
      key: Key(dayOffRequest.date.toString() + _facilityWorkerProfile.dayOffRequests.indexOf(dayOffRequest).toString()),
      child: Container(
          child: ListTile(
        title: Text(
          formatter.format(dayOffRequest.date),
        ),
      )),
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      closeOnScroll: false,
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: '削除',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("確認"),
                  content: Text("削除します。よろしいですか？"),
                  actions: [
                    FlatButton(
                      child: Text("キャンセル"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    FlatButton(
                      child: Text("削除"),
                      onPressed: () async {
                        await LoadingOverlay.of(context)
                            .during(model.deleteDayOffRequest(_facilityWorkerProfile, dayOffRequest));
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
