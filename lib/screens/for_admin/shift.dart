import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/components/shift/shift_config_card.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class ShiftScreen extends StatelessWidget {
  const ShiftScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SectionTitle("シフト確認"),
          Expanded(flex: 1, child: Container()),
          SectionTitle("シフト設定"),
          Expanded(flex: 1, child: ShiftConfigCard(ShiftConfig())),
        ],
      ),
    );
  }
}
