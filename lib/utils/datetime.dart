bool dateTimeEq(DateTime dt1, DateTime dt2) {
  print(dt1);
  print(dt2);
  return dt1.difference(dt2).inDays.abs() <= 0;
}
