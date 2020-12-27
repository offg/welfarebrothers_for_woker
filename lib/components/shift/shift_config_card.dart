import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/domain/shift_config/role_assignment_requirement.dart';
import 'package:welfarebrothers_for_worker/domain/shift_config/shift_config.dart';
import 'package:welfarebrothers_for_worker/domain/shift_config/shift_pattern.dart';

class ShiftConfigCard extends StatelessWidget {
  final ShiftConfig shiftConfig;
  const ShiftConfigCard(this.shiftConfig);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        child: Column(
          children: [
            SectionTitle("シフトパターン"),
            Expanded(flex: 1, child: _buildShiftPatterns(context, shiftConfig.shiftPatterns)),
            SectionTitle("必要人員"),
            Expanded(flex: 1, child: _buildRoleAssignmentRequirements(context, shiftConfig.roleAssignmentRequirements)),
          ],
        ));
  }

  Widget _buildRoleAssignmentRequirements(BuildContext context, List<RoleAssignmentRequirement> roleAssignmentRequirements) {
    return ListView(
      children: roleAssignmentRequirements
          .map((e) => ListTile(
                onTap: () {},
                leading: Text(e.role.name),
                subtitle: Row(
                  children: [
                    Text(e.timeFrom.toString()),
                    Text("〜"),
                    Text(e.timeTo.toString()),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.navigate_next_rounded),
                  onPressed: () {},
                ),
              ))
          .toList(),
    );
  }

  Widget _buildShiftPatterns(BuildContext context, List<ShiftPattern> shiftPatterns) {
    return ListView(
      children: shiftPatterns
          .map((e) => ListTile(
                leading: Text(e.symbol),
                title: Text(e.name),
                onTap: () {},
                subtitle: Row(
                  children: [
                    Text(e.timeFrom.toString()),
                    Text("〜"),
                    Text(e.timeTo.toString()),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.navigate_next_rounded),
                  onPressed: () {},
                ),
              ))
          .toList(),
    );
  }
}
