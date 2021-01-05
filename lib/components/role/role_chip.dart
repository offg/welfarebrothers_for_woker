import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

const _colorByRoleId = {
  "caregiver": Colors.cyan,
  "counselor": Colors.blueGrey,
  "trainer": Colors.blue,
  "nurse": Colors.pinkAccent
};

class RoleChip extends StatelessWidget {
  final Role role;
  const RoleChip(this.role);
  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: EdgeInsets.all(8),
      backgroundColor: _colorByRoleId[role.id].withOpacity(0.75),
      labelStyle: TextStyle(
        color: Colors.white,
        height: 1,
        fontSize: 10,
      ),
      label: Text(role.name),
    );
  }
}
