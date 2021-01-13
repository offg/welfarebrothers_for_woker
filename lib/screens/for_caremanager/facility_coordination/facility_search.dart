import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/screens/for_caremanager/facility_coordination/facility_list.dart';

class FacilitySearchScreen extends StatelessWidget {
  const FacilitySearchScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "施設検索",
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 16,
          ),
        ),
      ),
      body: FacilityListScreen(),
    );
  }
}
