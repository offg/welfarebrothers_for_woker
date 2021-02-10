import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/components/shift_config/role_assignment_requirement_form.dart';
import 'package:welfarebrothers_for_worker/components/shift_config/shift_pattern_form.dart';
import 'package:welfarebrothers_for_worker/domain/shift_config/shift_config.dart';
import 'package:welfarebrothers_for_worker/view_models/for_admin/shift_config.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class ShiftConfigForm extends StatefulWidget {
  @override
  _ShiftConfigFormState createState() => _ShiftConfigFormState();
}

class _ShiftConfigFormState extends State<ShiftConfigForm> {
  @override
  void initState() {
    super.initState();
  }

  Widget _buildShitPatternList(BuildContext context, ShiftConfigViewModel model) {
    if (model.shiftConfig.shiftPatterns.isEmpty) return Center(child: Text("シフトが登録されていません"));
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: model.shiftConfig.shiftPatterns
          .map((e) => ListTile(
                leading: Text(e.symbol),
                minLeadingWidth: 100,
                title: Text(e.name),
                subtitle: Text(e.timeFrom + "〜" + e.timeTo),
                dense: true,
                onTap: _onPressedForShiftPattern(e, model),
              ))
          .toList(),
    );
  }

  Widget _buildRoleAssignmentRequirementList(BuildContext context, ShiftConfigViewModel model) {
    if (model.shiftConfig.roleAssignmentRequirements.isEmpty) return Center(child: Text("必要人員が登録されていません"));
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: model.shiftConfig.roleAssignmentRequirements
          .map((e) => ListTile(
                leading: Text(e.role.name),
                isThreeLine: true,
                minLeadingWidth: 100,
                title: Text(e.numberOfWorkersDisplay),
                dense: true,
                subtitle: Text(e.timeFrom + "〜" + e.timeTo),
                onTap: _onPressedForRoleAssignmentRequirement(e, model),
              ))
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ShiftConfigViewModel>(
      builder: (context, model, child) => SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SectionTitle("シフトパターン"),
              IconButton(
                icon: Icon(Icons.add_rounded),
                onPressed: _onPressedForShiftPattern(
                  ShiftPatternExtension.withEmpty(model.shiftConfig.id),
                  model,
                ),
              )
            ]),
            SizedBox(height: 10),
            _buildShitPatternList(context, model),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SectionTitle("必要人員"),
              IconButton(
                  icon: Icon(Icons.add_rounded),
                  onPressed: _onPressedForRoleAssignmentRequirement(
                      RoleAssignmentRequirementExtension.withEmpty(model.shiftConfig.id), model))
            ]),
            SizedBox(height: 10),
            _buildRoleAssignmentRequirementList(context, model),
          ],
        ),
      ),
    );
  }

  _onPressedForShiftPattern(object, ShiftConfigViewModel model) {
    return () async {
      ShiftPattern edited = await Navigator.of(context).push(new MaterialPageRoute<ShiftPattern>(
          builder: (BuildContext context) {
            return ShiftPatternForm(object);
          },
          fullscreenDialog: true));

      if (edited != null)
        await LoadingOverlay.of(context).during(model.updateOrCreateShiftPattern(
          model.facilityAdministration.id,
          edited,
        ));
      setState(() {});
      return;
    };
  }

  _onPressedForRoleAssignmentRequirement(object, ShiftConfigViewModel model) {
    return () async {
      RoleAssignmentRequirement edited = await Navigator.of(context).push(
        MaterialPageRoute<RoleAssignmentRequirement>(
            builder: (BuildContext context) {
              return RoleAssignmentRequirementForm(object);
            },
            fullscreenDialog: true),
      );

      if (edited != null)
        await LoadingOverlay.of(context).during(model.updateOrCreateRoleAssignmentRequirement(
          model.facilityAdministration.id,
          edited,
        ));
      setState(() {});
      return;
    };
  }
}
