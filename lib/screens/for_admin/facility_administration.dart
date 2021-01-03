import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/components/dashboard/dashboard.dart';
import 'package:welfarebrothers_for_worker/components/logo.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_administration.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/view_models/shift_config.dart';

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
        builder: (_context, model, child) => ListTile(
          leading: Icon(menu.icon),
          title: Text(menu.title),
          onTap: menu.menuOnTap(_context, model),
          trailing: Icon(Icons.navigate_next_sharp),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Menu> menuList = [
      Menu(
        "従業員管理",
        Icons.people_sharp,
        (_context, model) => () async {
          await LoadingOverlay.of(_context).during(
            _context.read<FacilityWorkerProfileViewModel>().initializeWithFacility(
                  model.currentFacilityAdministration,
                ),
          );
          Navigator.of(_context).pushNamed("/workers");
        },
      ),
      Menu(
          "シフト管理",
          Icons.watch_later_sharp,
          (_context, model) => () async {
                await LoadingOverlay.of(_context).during(
                  _context
                      .read<ShiftConfigViewModel>()
                      .initializeWithFacilityAdministration(model.currentFacilityAdministration),
                );
                Navigator.of(_context).pushNamed("/shift_config");
              }),
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
            flex: 2,
            child: PieChartDashboard(),
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
            ),
          )
        ],
      ),
    );
  }
}
