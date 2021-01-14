import 'package:flutter/material.dart';

InputDecoration inputDecoration(
  BuildContext context,
  String labelText, {
  String hintText,
}) {
  return InputDecoration(
    labelText: labelText,
    hintText: hintText,
    // border: OutlineInputBorder(
    //   borderRadius: BorderRadius.all(Radius.circular(4)),
    //   borderSide: BorderSide(color: Colors.blueGrey, width: 4),
    // ),
  );
}
