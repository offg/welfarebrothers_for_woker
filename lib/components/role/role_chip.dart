import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class RoleChip extends StatelessWidget {
  final Role role;
  const RoleChip(this.role);
  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: EdgeInsets.all(8),
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.75),
      labelStyle: TextStyle(
        color: Colors.white,
        height: 1,
        fontSize: 10,
      ),
      label: Text(role.name),
    );
  }
}
