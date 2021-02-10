import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/work_schedule/work_schedule_summary_card.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/work_schedule.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class WorkScheduleListScreen extends StatelessWidget {
  const WorkScheduleListScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Consumer<WorkScheduleViewModel>(
          builder: (context, model, child) => ListView.builder(
            itemCount: model.workSchedules.length,
            itemBuilder: (context, i) => _buildWorkScheduleSummary(context, model, i),
          ),
        ),
      ),
    );
  }

  Widget _buildWorkScheduleSummary(BuildContext context, WorkScheduleViewModel model, int index) {
    WorkScheduleSummary workScheduleSummary = model.workSchedules[index];
    return WorkScheduleSummaryCard(workScheduleSummary, model);
  }
}
