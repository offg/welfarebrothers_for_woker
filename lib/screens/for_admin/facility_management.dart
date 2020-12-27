import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/logo.dart';

class FacilityManagementScreen extends StatelessWidget {
  const FacilityManagementScreen();
  Widget _buildMenu(BuildContext context, String title, String path) {
    return Container(
      child: Card(
          child: Center(
              child: FlatButton(
        child: Text(title),
        onPressed: () => Navigator.of(context).pushNamed(path),
      ))),
    );
  }

  @override
  Widget build(BuildContext context) {
    Map<String, String> menu = {
      "従業員管理": "/staff",
      "シフト管理": "/shift",
    };
    return Scaffold(
      appBar: AppBar(
        leading: Logo(),
        leadingWidth: 120,
        toolbarHeight: 70,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Card(
                child: Column(
              children: [
                Text("お疲れ様です"),
              ],
            )),
          ),
          Expanded(
            flex: 2,
            child: GridView.count(
              crossAxisCount: 2,
              children: menu.entries.map((entry) => _buildMenu(context, entry.key, entry.value)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
