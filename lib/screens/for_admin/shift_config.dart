import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/shift_config/shift_config_form.dart';

class ShiftConfigScreen extends StatelessWidget {
  const ShiftConfigScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: ShiftConfigForm(),
        ),
      ),
    );
  }
}
