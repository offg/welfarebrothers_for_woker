import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/role/role_chip.dart';
import 'package:welfarebrothers_for_worker/utils/datetime.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/work_schedule.dart';

class WorkScheduleDetailScreen extends StatefulWidget {
  const WorkScheduleDetailScreen();
  @override
  State<StatefulWidget> createState() => _WorkScheduleDetailScreenState();
}

class _WorkScheduleDetailScreenState extends State<WorkScheduleDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Consumer<WorkScheduleViewModel>(
            builder: (context, model, child) => ListView.builder(
              itemExtent: 100.0,
              itemCount: model.workSchedule.shifts.length,
              itemBuilder: (context, i) => _buildShift(context, model, i),
            ),
          ),
        ));
  }

  Widget _buildShift(BuildContext context, WorkScheduleViewModel model, int index) {
    var shift = model.workSchedule.shifts[index];
    var child = ListTile(
      leading: Chip(label: Text(shift.shiftPattern.symbol)),
      title: Text(shift.facilityWorkerProfile.lastName),
      subtitle: RoleChip(shift.role),
      trailing: IconButton(
        icon: Icon(Icons.navigate_next_sharp),
        onPressed: () {},
      ),
    );

    if (index == 0 || (index > 0 && shift.date != model.workSchedule.shifts[index - 1].date)) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(dateFormatter.format(shift.date)),
          SizedBox(height: 10),
          Divider(
            height: 1.5,
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(height: 20),
          child,
        ],
      );
    }
    return child;
  }
}
