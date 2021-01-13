import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/components/dashboard/dashboard.dart';
import 'package:welfarebrothers_for_worker/components/logo.dart';
import 'package:welfarebrothers_for_worker/utils/menu.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_administration.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_availability.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/shift_config.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/work_schedule.dart';

class FacilityAdministrationScreen extends StatelessWidget {
  const FacilityAdministrationScreen();

  @override
  Widget build(BuildContext context) {
    List<Menu> menuList = [
      Menu(
        "空き状況登録",
        Icons.event_available_sharp,
        (_context, model) => () async {
          await LoadingOverlay.of(_context).during(_context
              .read<FacilityAvailabilityViewModel>()
              .initializeWithFacilityAdministration(
                  (model as FacilityAdministrationViewModel).currentFacilityAdministration));

          Navigator.of(_context).pushNamed("/config/availability");
        },
      ),
      Menu(
        "従業員管理",
        Icons.people_sharp,
        (_context, model) => () async {
          await LoadingOverlay.of(_context).during(
            _context.read<FacilityWorkerProfileViewModel>().initializeWithFacility(
                  (model as FacilityAdministrationViewModel).currentFacilityAdministration,
                ),
          );
          Navigator.of(_context).pushNamed("/workers");
        },
      ),
      Menu(
          "シフト設定",
          Icons.settings_display_sharp,
          (_context, model) => () async {
                await LoadingOverlay.of(_context).during(
                  _context.read<ShiftConfigViewModel>().initializeWithFacilityAdministration(
                      (model as FacilityAdministrationViewModel).currentFacilityAdministration),
                );
                Navigator.of(_context).pushNamed("/shift_config");
              }),
      Menu(
          "シフト管理",
          Icons.watch_later_sharp,
          (_context, model) => () async {
                await LoadingOverlay.of(_context).during(
                  _context.read<WorkScheduleViewModel>().initializeWithFacilityAdministration(
                      (model as FacilityAdministrationViewModel).currentFacilityAdministration),
                );
                Navigator.of(_context).pushNamed("/work_schedules");
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
            flex: 1,
            child: Row(children: [
              Flexible(child: WorkScheduleDailyDashboard.withSampleData()),
            ]),
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                direction: Axis.horizontal,
                children: menuList
                    .map(
                      (menu) => buildMenu<FacilityAdministrationViewModel>(context, menu),
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
