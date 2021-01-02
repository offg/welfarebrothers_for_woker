import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/components/logo.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_administration.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_worker_profile.dart';

typedef MenuOnTap = Function Function(BuildContext context, FacilityAdministrationViewModel model);

class Menu {
  String title;
  IconData icon;
  MenuOnTap menuOnTap;
  Menu(this.title, this.icon, this.menuOnTap);
}

class FacilityAdministrationScreen extends StatelessWidget {
  const FacilityAdministrationScreen();
  Widget _buildMenu(BuildContext context, Menu menu) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Consumer<FacilityAdministrationViewModel>(
          builder: (_context, model, child) => InkWell(
            onTap: menu.menuOnTap(_context, model),
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
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    List<Menu> menuList = [
      Menu(
        "従業員管理",
        Icons.people_rounded,
        (_context, model) => () async {
          await LoadingOverlay.of(_context).during(
            _context.read<FacilityWorkerProfileViewModel>().initializeWithFacility(
                  model.currentFacilityId,
                ),
          );
          Navigator.of(_context).pushNamed("/staff");
        },
      ),
      Menu("シフト管理", Icons.table_chart_rounded, (context, model) => () {})
    ];
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
                  children: menuList
                      .map(
                        (menu) => _buildMenu(context, menu),
                      )
                      .toList(),
                ),
              ))
        ],
      ),
    );
  }
}