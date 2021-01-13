import 'package:flutter/material.dart';

class FacilityCoordinationRequestScreen extends StatelessWidget {
  const FacilityCoordinationRequestScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "連携希望リスト",
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 16,
          ),
        ),
        centerTitle: false,
      ),
      body: Container(),
    );
  }
}
