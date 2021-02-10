import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/components/facility/facility_for_worker_card.dart';
import 'package:welfarebrothers_for_worker/components/logo.dart';
import 'package:welfarebrothers_for_worker/utils/menu.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_administration.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_availability.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/shift_config.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/work_schedule.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityAdministrationScreen extends StatelessWidget {
  const FacilityAdministrationScreen();

  @override
  Widget build(BuildContext context) {
    List<Menu> menuList = [
      Menu(
        "空き状況登録",
        Icons.event_available_sharp,
        (_context, model) => () async {
          await LoadingOverlay.of(_context).during(_context.read<FacilityAvailabilityViewModel>().initialize());
          Navigator.of(_context).pushNamed("/config/availability");
        },
      ),
      Menu(
        "従業員管理",
        Icons.people_sharp,
        (_context, model) => () async {
          await LoadingOverlay.of(_context).during(
            _context.read<FacilityWorkerProfileViewModel>().initialize(),
          );
          Navigator.of(_context).pushNamed("/workers");
        },
      ),
      Menu(
          "シフト設定",
          Icons.settings_display_sharp,
          (_context, model) => () async {
                await LoadingOverlay.of(_context).during(
                  _context.read<ShiftConfigViewModel>().initialize(),
                );
                Navigator.of(_context).pushNamed("/shift_config");
              }),
      Menu(
          "シフト管理",
          Icons.watch_later_sharp,
          (_context, model) => () async {
                await LoadingOverlay.of(_context).during(_context.read<WorkScheduleViewModel>().initialize());
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: SectionTitle("選択中の施設")),
                Consumer<FacilityAdministrationViewModel>(
                  builder: (context, model, child) => Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: DropdownButton(
                        hint: Text(""),
                        isExpanded: false,
                        iconSize: 0,
                        value: model.currentFacilityAdministration,
                        items: (model.facilityAdministrations ?? []).isEmpty
                            ? null
                            : model.facilityAdministrations
                                .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e.facility.name),
                                    ))
                                .toList(),
                        onChanged: (value) async {
                          model.setCurrentFacilityAdministration(value);
                          await LoadingOverlay.of(context).during(model.initialize());
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Consumer<FacilityAdministrationViewModel>(
              builder: (context, model, child) => FacilityForWorkerCard(
                facility: model.currentFacilityAdministration?.facility ?? FacilityForWorker(id: "", name: ""),
                header: Text(model.currentFacilityAdministration?.facility?.name ?? " "),
                onFacilityTap: null,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Align(
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
            ),
          )
        ],
      ),
    );
  }
}
