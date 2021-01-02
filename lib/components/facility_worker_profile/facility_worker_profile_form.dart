import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/config/locator.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/utils/datetime.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

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
  List<DayOffRequest> _dayOffRequests;

  @override
  void initState() {
    setState(() {
      _facilityWorkerProfile = widget.facilityWorkerProfile;
      _workingHoursConfig = _facilityWorkerProfile.workingHoursConfig;
      _slidableController = SlidableController();
    });
    super.initState();
  }

  Future<bool> validate(BuildContext context, DateTime value) async {
    print(value);
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
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Text(_facilityWorkerProfile.displayName),
            SizedBox(height: 10),
            Expanded(flex: 2, child: _buildWorkingHoursConfigForm(context, _workingHoursConfig)),
            SizedBox(height: 10),
            Expanded(flex: 2, child: _buildDayOffRequestForm(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildWorkingHoursConfigForm(BuildContext context, WorkingHoursConfig workingHoursConfig) {
    return Column(children: [
      SectionTitle("勤務時間設定"),
      TextFormField(
        initialValue: _workingHoursConfig.weeklyMaxWorkingHours.toString(),
        onChanged: (value) {
          _workingHoursConfig.weeklyMaxWorkingHours = int.tryParse(value);
        },
        decoration: InputDecoration(suffixText: "時間/週"),
      ),
      TextFormField(
        initialValue: _workingHoursConfig.monthlyMaxWorkingHours.toString(),
        onChanged: (value) {
          _workingHoursConfig.monthlyMaxWorkingHours = int.tryParse(value);
        },
        decoration: InputDecoration(suffixText: "時間/月"),
      ),
      Consumer<FacilityWorkerProfileViewModel>(
          builder: (_context, model, child) => RaisedButton(
              child: Text("保存"),
              onPressed: () async {
                LoadingOverlay.of(context).during(model.updateOrCreateWorkingHoursConfig(
                  _facilityWorkerProfile,
                  _workingHoursConfig,
                ));
              }))
    ]);
  }

  Widget _buildDayOffRequestForm(BuildContext context) {
    return Consumer<FacilityWorkerProfileViewModel>(
      builder: (_context, model, child) => Column(children: [
        Expanded(
          flex: 1,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SectionTitle("休暇希望"),
            IconButton(
              icon: Icon(Icons.add_rounded),
              onPressed: () async {
                var now = DateTime.now();
                var value = await showDatePicker(
                  context: context,
                  initialDate: now,
                  firstDate: DateTime(now.year, now.month - 1),
                  lastDate: DateTime(now.year, now.month + 6),
                );
                if (value != null) {
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
        ),
        Expanded(
          flex: 3,
          child: _facilityWorkerProfile.dayOffRequests.isNotEmpty
              ? ListView(
                  children: _facilityWorkerProfile.dayOffRequests.map((e) => _buildDayOffRequest(context, e)).toList(),
                )
              : Center(
                  child: Text("休暇希望がありません"),
                ),
        ),
      ]),
    );
  }

  Widget _buildDayOffRequest(BuildContext context, DayOffRequest dayOffRequest) {
    return Consumer<FacilityWorkerProfileViewModel>(
        builder: (_context, model, child) => Slidable(
              controller: _slidableController,
              key: Key(
                  dayOffRequest.date.toString() + _facilityWorkerProfile.dayOffRequests.indexOf(dayOffRequest).toString()),
              child: Container(
                  child: ListTile(
                title: Text(
                  locator<DateFormat>().format(dayOffRequest.date),
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
                                await LoadingOverlay.of(_context)
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
            ));
  }
}
