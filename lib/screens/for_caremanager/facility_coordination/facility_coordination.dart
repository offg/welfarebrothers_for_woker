import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/components/logo.dart';
import 'package:welfarebrothers_for_worker/utils/menu.dart';
import 'package:welfarebrothers_for_worker/view_models/for_caremanager/coordination_request.dart';
import 'package:welfarebrothers_for_worker/view_models/for_caremanager/facility_coordination.dart';
import 'package:welfarebrothers_for_worker/view_models/for_caremanager/facility_search.dart';

class FacilityCoordinationScreen extends StatelessWidget {
  const FacilityCoordinationScreen();
  @override
  Widget build(BuildContext context) {
    List<Menu> menuList = [
      Menu(
        "施設検索",
        Icons.people_sharp,
        (_context, model) => () async {
          await LoadingOverlay.of(_context).during(
            _context.read<FacilitySearchViewModel>().initialize(),
          );
          Navigator.of(_context).pushNamed("/search");
        },
      ),
      Menu(
        "連携希望リスト",
        Icons.people_sharp,
        (_context, model) => () async {
          await LoadingOverlay.of(_context).during(
            _context.read<CoordinationRequestViewModel>().initialize(),
          );
          Navigator.of(_context).pushNamed("/requests");
        },
      ),
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
            child: SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                direction: Axis.horizontal,
                children: menuList
                    .map(
                      (menu) => buildMenu<FacilityCoordinationViewModel>(context, menu),
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
