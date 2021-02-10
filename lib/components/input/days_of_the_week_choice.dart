import 'package:flutter/material.dart';
import 'package:quiver/iterables.dart';
import 'package:welfarebrothers_for_worker/utils/datetime.dart';

Map<int, bool> daysOfTheWeekChoiceStatusFromSelectedDays(List<int> selected) {
  var result = initDaysOfTheWeekChoiceStatus();
  for (var elem in selected) {
    result[elem] = true;
  }
  return result;
}

List<int> selectedDaysFromDaysOfTheWeekChoiceStatus(Map<int, bool> choiceStatus) {
  return choiceStatus.keys.where((element) => choiceStatus[element]).toList();
}

Map<int, bool> initDaysOfTheWeekChoiceStatus() => Map<int, bool>.fromEntries(
      range(0, 7).map(
        (e) => MapEntry(e, false),
      ),
    );

class DayOfTheWeekChoice extends StatefulWidget {
  final Map<int, bool> choiceStatus;
  final Function onChanged;
  DayOfTheWeekChoice(this.choiceStatus, this.onChanged);

  @override
  _DayOfTheWeekChoice createState() => _DayOfTheWeekChoice();
}

class _DayOfTheWeekChoice extends State<DayOfTheWeekChoice> {
  Map<int, bool> _choiceStatus;

  @override
  void initState() {
    if (widget.choiceStatus != null && widget.choiceStatus.isNotEmpty) {
      setState(() {
        _choiceStatus = widget.choiceStatus;
      });
    } else {
      setState(() {
        _choiceStatus = initDaysOfTheWeekChoiceStatus();
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: dayLabels.entries
            .map((entry) => CheckboxListTile(
                  title: Text(entry.value),
                  value: _choiceStatus[entry.key],
                  onChanged: (value) {
                    setState(() {
                      _choiceStatus[entry.key] = value;
                    });
                    widget.onChanged(entry.key)(value);
                  },
                ))
            .toList(),
      ),
    );
  }
}
