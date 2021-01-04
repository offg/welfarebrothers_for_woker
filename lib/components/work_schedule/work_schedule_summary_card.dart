import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/utils/datetime.dart';
import 'package:welfarebrothers_for_worker/view_models/work_schedule.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class WorkScheduleSummaryCard extends StatelessWidget {
  final WorkScheduleSummary workScheduleSummary;
  final WorkScheduleViewModel workScheduleViewModel;
  const WorkScheduleSummaryCard(this.workScheduleSummary, this.workScheduleViewModel);
  @override
  Widget build(BuildContext context) {
    String title =
        dateFormatter.format(workScheduleSummary.dateFrom) + "〜" + dateFormatter.format(workScheduleSummary.dateTo);
    return Card(
        elevation: 0,
        child: ListTile(
          title: Text(title),
          trailing: IconButton(
            icon: Icon(Icons.navigate_next_sharp),
            onPressed: () async {
              await LoadingOverlay.of(context).during(workScheduleViewModel.initializeWithWorkSchedule(workScheduleSummary));
              Navigator.of(context).pushNamed("/work_schedules/detail");
            },
          ),
        ));
  }
}
