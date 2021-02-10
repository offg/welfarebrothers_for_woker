import 'package:intl/intl.dart';
import 'package:welfarebrothers_for_worker/domain/util.dart';

Map<int, String> dayLabels = {
  0: "月曜日",
  1: "火曜日",
  2: "水曜日",
  3: "木曜日",
  4: "金曜日",
  5: "土曜日",
  6: "日曜日",
};

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
  double result = time + (double.parse(minuteStr) * 0.01 * (5 / 3));
  return result;
}

const String locale = "ja";
const String dateFormat = "yyyy/MM/dd(E)";
DateFormat dateFormatter = DateFormat(dateFormat, locale);
