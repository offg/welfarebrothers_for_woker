class Time {
  int hour;
  int minute;
  Time(this.hour, this.minute);
  String toString() => "${hour.toString().padLeft(2, "0")}:${minute.toString().padLeft(2, "0")}";
}
