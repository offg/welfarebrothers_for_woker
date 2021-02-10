import 'package:flutter/material.dart';

const days = const [0, 1, 2, 3, 4, 5, 6];
const dayLabels = const ["日", "月", "火", "水", "木", "金", "土"];

class Availabilities extends StatelessWidget {
  final List<int> availableDaysInWeek;
  final bool isNull;

  const Availabilities({List<int> availableDaysInWeek})
      : this.isNull = availableDaysInWeek == null,
        this.availableDaysInWeek = availableDaysInWeek ?? const [];
  @override
  Widget build(BuildContext context) {
    return Table(
      defaultColumnWidth: FixedColumnWidth(30),
      children: [
        TableRow(
          children: days
              .map((e) => Align(
                    alignment: Alignment.center,
                    child: Text(
                      dayLabels[e],
                      style: TextStyle(
                        color: _colorForDay(e),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ))
              .toList(),
        ),
        TableRow(children: days.map((e) => _availability(e, context)).toList()),
      ],
    );
  }

  Widget _availability(int day, context) {
    var theme = Theme.of(context);
    var color = theme.primaryColor.withOpacity(0.95);
    if (isNull)
      return Align(
        alignment: Alignment.center,
        child: Text(
          "?",
          style: TextStyle(fontSize: 15, color: color),
        ),
      );
    var available = availableDaysInWeek.contains(day);
    return available
        ? Icon(
            Icons.adjust_sharp,
            color: color,
            size: 15,
          )
        : Icon(
            Icons.close_sharp,
            color: color,
            size: 15,
          );
  }

  Color _colorForDay(int day) {
    Color baseColor;
    switch (day) {
      case 0:
        baseColor = Colors.redAccent;
        break;
      case 6:
        baseColor = Colors.blueAccent;
        break;
      default:
        baseColor = Colors.grey;
        break;
    }
    return baseColor;
  }
}
