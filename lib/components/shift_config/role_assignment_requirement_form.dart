import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/TimeRangeSlider.dart';
import 'package:welfarebrothers_for_worker/components/app/panel.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/components/input/welfarebrothers_input.dart';
import 'package:welfarebrothers_for_worker/components/role/role_dropdown.dart';
import 'package:welfarebrothers_for_worker/utils/datetime.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class RoleAssignmentRequirementForm extends StatefulWidget {
  final RoleAssignmentRequirement roleAssignmentRequirement;
  RoleAssignmentRequirementForm(this.roleAssignmentRequirement);
  @override
  _RoleAssignmentRequirementState createState() => _RoleAssignmentRequirementState();
}

class _RoleAssignmentRequirementState extends State<RoleAssignmentRequirementForm> {
  GlobalKey<FormState> _roleAssignmentRequirementFormKey = new GlobalKey<FormState>();

  RoleAssignmentRequirement _roleAssignmentRequirement;
  RangeValues roleAssignmentRequirementTimeRange;
  @override
  void initState() {
    setState(() {
      roleAssignmentRequirementTimeRange = RangeValues(0, 24);
      _roleAssignmentRequirement = widget.roleAssignmentRequirement;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close_sharp),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.check_sharp),
            onPressed: () {
              if (_roleAssignmentRequirementFormKey.currentState.validate()) {
                Navigator.of(context).pop(_roleAssignmentRequirement);
              }
            },
          )
        ],
      ),
      body: Form(
        key: _roleAssignmentRequirementFormKey,
        child: Column(children: [
          SectionTitle("職種"),
          Panel(
            child: RoleDropdown(
              (value) {
                setState(() {
                  _roleAssignmentRequirement.roleId = value;
                });
              },
              selectedRoleId: _roleAssignmentRequirement.role.id,
            ),
          ),
          SizedBox(height: 10),
          SectionTitle("勤務時間"),
          Panel(
            child: TimeRangeSlider(
              _roleAssignmentRequirement.timeFrom,
              _roleAssignmentRequirement.timeTo,
              (RangeValues value) {
                this.setState(() {
                  _roleAssignmentRequirement.timeFrom = timeToString(value.start);
                  _roleAssignmentRequirement.timeTo = timeToString(value.end);
                });
              },
            ),
          ),
          SizedBox(height: 10),
          SectionTitle("人数"),
          Panel(
            child: Row(
              children: [
                Flexible(
                  child: WelfarebrothersInput(
                      labelText: "最大人数",
                      text: _roleAssignmentRequirement.minNumberOfWorkers,
                      onChanged: (value) {
                        setState(() {
                          _roleAssignmentRequirement.minNumberOfWorkers = int.tryParse(value);
                        });
                      },
                      textInputMode: TextInputMode.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "値を入れてください";
                        }
                        return null;
                      }),
                ),
                Flexible(
                  child: WelfarebrothersInput(
                    labelText: "最大人数",
                    text: _roleAssignmentRequirement.maxNumberOfWorkers,
                    onChanged: (value) {
                      setState(() {
                        _roleAssignmentRequirement.maxNumberOfWorkers = int.tryParse(value);
                      });
                    },
                    textInputMode: TextInputMode.number,
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
