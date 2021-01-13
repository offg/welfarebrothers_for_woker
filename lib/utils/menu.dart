import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';

typedef MenuOnTap = Function Function(BuildContext context, WelfareBrothersViewModelBase model);

class Menu {
  String title;
  IconData icon;
  MenuOnTap menuOnTap;
  Menu(this.title, this.icon, this.menuOnTap);
}

Widget buildMenu<T extends WelfareBrothersViewModelBase>(BuildContext context, Menu menu) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Consumer<T>(
      builder: (_context, model, child) => ListTile(
        leading: Icon(menu.icon),
        title: Text(menu.title),
        onTap: menu.menuOnTap(_context, model),
        trailing: Icon(Icons.navigate_next_sharp),
      ),
    ),
  );
}
