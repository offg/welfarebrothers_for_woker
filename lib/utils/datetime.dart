bool dateTimeEq(DateTime dt1, DateTime dt2) {
  return dt1.difference(dt2).inDays.abs() <= 0;
}
