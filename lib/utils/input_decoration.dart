import 'package:flutter/material.dart';

InputDecoration inputDecoration(BuildContext context, String labelText) {
  return InputDecoration(
    labelText: labelText,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      borderSide: BorderSide(color: Colors.blueGrey, width: 4),
    ),
  );
}
