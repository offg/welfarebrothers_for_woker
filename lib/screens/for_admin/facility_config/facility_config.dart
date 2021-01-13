import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/panel.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/components/facility_config/facility_availability.dart';
import 'package:welfarebrothers_for_worker/domain/facility_availability/facility_availability.dart';
import 'package:welfarebrothers_for_worker/utils/datetime.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/facility_availability.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityConfigScreen extends StatelessWidget {
  const FacilityConfigScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<FacilityAvailabilityViewModel>(
        builder: (context, model, child) => Column(children: [
          if (model.facilityAvailability != null)
            Column(
              children: [
                SectionTitle("空き状況"),
                Panel(
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Wrap(
                        direction: Axis.horizontal,
                        children: dayLabels.entries
                            .map(
                              (e) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Chip(
                                  label: Text(e.value),
                                  labelStyle: Theme.of(context).textTheme.bodyText2.merge(
                                      model.facilityAvailability.daysOfTheWeek.contains(e.key)
                                          ? TextStyle(color: Colors.white)
                                          : null),
                                  backgroundColor: model.facilityAvailability.daysOfTheWeek.contains(e.key)
                                      ? Colors.cyan
                                      : Colors.blueGrey.withOpacity(0.2),
                                ),
                              ),
                            )
                            .toList(),
                      )),
                ),
                RaisedButton(
                  child: Text("編集する"),
                  onPressed: () async {
                    FacilityAvailability updated = await showDialog(
                        context: context, builder: (context) => FacilityAvailabilityForm(model.facilityAvailability));
                    if (updated != null) {
                      await model.updateOrCreateFacilityAvailability(updated);
                    }
                  },
                )
              ],
            ),
          if (model.facilityAvailability == null)
            Column(
              children: [
                Center(
                  child: Text("空き状況が登録されていません"),
                ),
                RaisedButton(
                  child: Text("登録する"),
                  onPressed: () async {
                    FacilityAvailability created = await showDialog(
                        context: context,
                        builder: (context) =>
                            FacilityAvailabilityForm(FacilityAvailabilityExtension.withEmpty(model.facilityAdministration)));
                    if (created != null) {
                      await model.updateOrCreateFacilityAvailability(created);
                    }
                  },
                ),
              ],
            ),
        ]),
      ),
    );
  }
}
