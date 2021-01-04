import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/view_models/app.dart';

class RoleDropdown extends StatefulWidget {
  final onChanged;
  final validate;
  RoleDropdown(this.onChanged, {bool validate}) : this.validate = validate ?? true;
  @override
  _RoleDropdownState createState() => _RoleDropdownState();
}

class _RoleDropdownState extends State<RoleDropdown> {
  String _selectedRoleId;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, model, child) => DropdownButtonFormField(
        validator: (value) => (value != null || !widget.validate) ? null : "選択してください",
        onChanged: (value) {
          widget.onChanged(value);
          setState(() {
            _selectedRoleId = value;
          });
        },
        value: _selectedRoleId,
        items: model.roles
            .map((role) => DropdownMenuItem(
                  child: Text(role.name),
                  value: role.id,
                ))
            .toList(),
      ),
    );
  }
}
