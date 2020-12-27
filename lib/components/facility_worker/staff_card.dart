import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/default_avatar.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/working_hours_config.dart';
import 'package:welfarebrothers_for_worker/domain/role.dart';

class StaffCard extends StatelessWidget {
  final FacilityWorkerProfile facilityWorkerProfile;
  final onTap;
  const StaffCard(this.facilityWorkerProfile, this.onTap);

  @override
  Widget build(BuildContext context) {
    var workerProfile = facilityWorkerProfile.workerProfile;
    var user = workerProfile.user;
    String name = (user?.lastName ?? "") + (user?.firstName ?? "");
    return Card(
      elevation: 0,
      child: ListTile(
        title: Row(children: [
          Text(
            name,
            style: TextStyle(height: 1),
          ),
          SizedBox(
            width: 5,
          ),
          Text("(${user?.username})"),
        ]),
        subtitle: Column(
          children: [
            _buildWorkingHours(context, facilityWorkerProfile.workingHoursConfig),
            _buildCapabilities(context, workerProfile.capabilities)
          ],
        ),
        leading: DefaultAvatar(),
        onTap: onTap,
        trailing: IconButton(
          icon: Icon(Icons.navigate_next_rounded),
          onPressed: null,
        ),
      ),
    );
  }

  Widget _buildCapabilities(BuildContext context, List<Role> capabilities) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: capabilities
          .map((e) => Chip(
                padding: EdgeInsets.all(8),
                backgroundColor: Theme.of(context).primaryColor.withOpacity(0.75),
                labelStyle: TextStyle(
                  color: Colors.white,
                  height: 1,
                  fontSize: 10,
                ),
                label: Text(e.name),
              ))
          .toList(),
    );
  }

  Widget _buildWorkingHours(BuildContext context, WorkingHoursConfig workingHoursConfig) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              (workingHoursConfig.weeklyMaxWorkingHours?.toString() ?? "-") + "時間/週",
            ),
            SizedBox(width: 20),
            Text(
              (workingHoursConfig.monthlyMaxWorkingHours?.toString() ?? "-") + "時間/月",
            ),
          ],
        ));
  }
}
