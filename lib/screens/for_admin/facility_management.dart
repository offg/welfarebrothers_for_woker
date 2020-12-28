import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/logo.dart';

class Menu {
  String title;
  IconData icon;
  Menu(this.title, this.icon);
}

class FacilityManagementScreen extends StatelessWidget {
  const FacilityManagementScreen();
  Widget _buildMenu(BuildContext context, String path, Menu menu) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: InkWell(
          onTap: () => Navigator.of(context).pushNamed(path),
          child: Container(
            constraints: BoxConstraints(
              maxHeight: 100,
              maxWidth: 200,
            ),
            child: Card(
              elevation: 0.5,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(menu.icon),
                    Text(
                      menu.title,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    Map<String, Menu> menu = {
      "/staff": Menu("従業員管理", Icons.people_rounded),
      "/shift": Menu("シフト管理", Icons.table_chart_rounded),
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
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Card(
                  child: Column(
                children: [
                  Text("お疲れ様です"),
                ],
              )),
            ),
          ),
          Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  children: menu.entries.map((entry) => _buildMenu(context, entry.key, entry.value)).toList(),
                ),
              ))
        ],
      ),
    );
  }
}
