import 'package:welfarebrothers_for_worker/domain/util.dart';

bool dateTimeEq(DateTime dt1, DateTime dt2) {
  return dt1.difference(dt2).inDays.abs() <= 0;
}

String timeToString(double v) {
  double hour = v.truncateToDouble();
  double minuteRatio = v - hour;
  double minute = 60 * minuteRatio;
  return Time(hour.toInt(), minute.toInt()).toString();
}

double stringToTime(String s) {
  List<String> splitTime = s.split(":");
  String hourStr = splitTime[0];
  String minuteStr = splitTime[1];
  double time = double.parse(hourStr);
  return time + double.parse(minuteStr) * (5 / 3);
}
