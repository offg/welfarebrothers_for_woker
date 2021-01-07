import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/TimeRangeSlider.dart';
import 'package:welfarebrothers_for_worker/components/app/panel.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/components/input/welfarebrothers_input.dart';
import 'package:welfarebrothers_for_worker/utils/datetime.dart';
import 'package:welfarebrothers_for_worker/utils/design.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class ShiftPatternForm extends StatefulWidget {
  ShiftPatternForm(this.shiftPattern);
  final ShiftPattern shiftPattern;

  @override
  _ShiftPatternFormState createState() => _ShiftPatternFormState();
}

class _ShiftPatternFormState extends State<ShiftPatternForm> {
  GlobalKey<FormState> _shiftPatternFormKey = new GlobalKey<FormState>();
  ShiftPattern _shiftPattern;

  @override
  void initState() {
    setState(() {
      _shiftPattern = widget.shiftPattern;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close_sharp),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.check_sharp),
            onPressed: () {
              Navigator.of(context).pop(_shiftPattern);
            },
          )
        ],
      ),
      body: Form(
        key: _shiftPatternFormKey,
        child: Column(
          children: [
            SectionTitle("名称等"),
            Panel(
              child: Row(children: [
                Flexible(
                  child: WelfarebrothersInput(
                    text: _shiftPattern.symbol,
                    labelText: "記号",
                    onChanged: (value) {
                      setState(() {
                        _shiftPattern.symbol = value;
                      });
                    },
                  ),
                ),
                horizontalSpace(),
                Flexible(
                  child: WelfarebrothersInput(
                    text: _shiftPattern.name,
                    labelText: "名前",
                    onChanged: (value) {
                      setState(() {
                        _shiftPattern.name = value;
                      });
                    },
                  ),
                )
              ]),
            ),
            SizedBox(height: 10),
            SectionTitle("勤務時間"),
            Panel(
              child: TimeRangeSlider(
                _shiftPattern.timeFrom,
                _shiftPattern.timeTo,
                (RangeValues value) {
                  this.setState(() {
                    _shiftPattern.timeFrom = timeToString(value.start);
                    _shiftPattern.timeTo = timeToString(value.end);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
