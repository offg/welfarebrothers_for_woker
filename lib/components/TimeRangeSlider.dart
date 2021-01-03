import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/utils/datetime.dart';

class TimeRangeSlider extends StatefulWidget {
  final String timeFrom;
  final String timeTo;
  final onChanged;
  TimeRangeSlider(this.timeFrom, this.timeTo, this.onChanged);
  @override
  _TimeRangeSlider createState() => _TimeRangeSlider();
}

class _TimeRangeSlider extends State<TimeRangeSlider> {
  RangeValues _rangeValues;
  @override
  void initState() {
    setState(() {
      _rangeValues = RangeValues(
        stringToTime(widget.timeFrom ?? "00:00"),
        stringToTime(widget.timeTo ?? "24:00"),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      min: 0,
      max: 24,
      divisions: 48,
      values: _rangeValues,
      labels: RangeLabels(
        timeToString(_rangeValues.start),
        timeToString(_rangeValues.end),
      ),
      onChanged: (value) {
        widget.onChanged(value);
        setState(() {
          _rangeValues = value;
        });
      },
    );
  }
}
