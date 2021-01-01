import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/config/locator.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityWorkerProfileForm extends StatefulWidget {
  final FacilityWorkerProfile facilityWorkerProfile;
  FacilityWorkerProfileForm(this.facilityWorkerProfile);

  @override
  _FacilityWorkerProfileFormState createState() => _FacilityWorkerProfileFormState();
}

class _FacilityWorkerProfileFormState extends State<FacilityWorkerProfileForm> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  WorkingHoursConfig workingHoursConfig;
  SlidableController _slidableController;
  FacilityWorkerProfile facilityWorkerProfile;

  TextEditingController _controllerForMonthlyWorkingHours;
  TextEditingController _controllerForWeeklyWorkingHours;
  List<DayOffRequest> _dayOffRequests;

  @override
  void initState() {
    setState(() {
      facilityWorkerProfile = widget.facilityWorkerProfile;
      workingHoursConfig = facilityWorkerProfile.workingHoursConfigObject;
      var dayOffRequests = facilityWorkerProfile.dayOffRequests;
      _controllerForMonthlyWorkingHours = TextEditingController(text: workingHoursConfig.monthlyMaxWorkingHours.toString());
      _controllerForWeeklyWorkingHours = TextEditingController(text: workingHoursConfig.weeklyMaxWorkingHours.toString());
      _dayOffRequests = List<DayOffRequest>.from(dayOffRequests);
      _slidableController = SlidableController();
    });
    super.initState();
  }

  bool _eq(DateTime dt1, DateTime dt2) {
    return dt1.year == dt2.year && dt1.month == dt2.month && dt1.day == dt2.day;
  }

  Future<bool> validate(BuildContext context, DateTime value) async {
    bool duplicated = _dayOffRequests.any((element) => _eq(element.date, value));
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
            Text(facilityWorkerProfile.displayName),
            SizedBox(height: 20),
            _buildWorkingHoursConfigForm(context, workingHoursConfig),
            SizedBox(height: 20),
            _buildDayOffRequestForm(context),
            RaisedButton(
              child: Text("保存"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget _buildWorkingHoursConfigForm(BuildContext context, WorkingHoursConfig workingHoursConfig) {
    return Column(children: [
      SectionTitle("勤務時間設定"),
      TextFormField(
        controller: _controllerForWeeklyWorkingHours,
        decoration: InputDecoration(suffixText: "時間/週"),
      ),
      TextFormField(
        controller: _controllerForMonthlyWorkingHours,
        decoration: InputDecoration(suffixText: "時間/月"),
      ),
    ]);
  }

  Widget _buildDayOffRequestForm(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                bool valid = await validate(context, value);
                if (valid) {
                  setState(() {
                    _dayOffRequests.add(
                      DayOffRequest(facilityWorkerProfileId: facilityWorkerProfile.id, date: value),
                    );
                  });
                  return;
                }
              }
            },
          ),
        ]),
        ..._dayOffRequests.map((e) => _buildDayOffRequest(context, e)).toList(),
      ],
    );
  }

  Widget _buildDayOffRequest(BuildContext context, DayOffRequest dayOffRequest) {
    return Slidable(
      controller: _slidableController,
      key: Key(dayOffRequest.date.toString() + _dayOffRequests.indexOf(dayOffRequest).toString()),
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
          caption: 'Delete',
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
                      onPressed: () {
                        setState(() {
                          _dayOffRequests.remove(dayOffRequest);
                          _dayOffRequests = _dayOffRequests;
                        });
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
