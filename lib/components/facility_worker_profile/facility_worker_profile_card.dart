import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/default_avatar.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityWorkerProfileCard extends StatelessWidget {
  final FacilityWorkerProfile facilityWorkerProfile;
  final onTap;
  const FacilityWorkerProfileCard(this.facilityWorkerProfile, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        title: Row(children: [
          Text(
            facilityWorkerProfile.displayName,
            style: TextStyle(height: 1),
          ),
          SizedBox(
            width: 5,
          ),
        ]),
        subtitle: Column(
          children: [
            _buildWorkingHours(context, facilityWorkerProfile.workingHoursConfig),
            _buildCapabilities(context, facilityWorkerProfile.capabilities)
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
    if (workingHoursConfig == null) return Container();
    return Padding(
        padding: EdgeInsets.all(8),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: Axis.horizontal,
          children: [
            Text(workingHoursConfig.weeklyMaxWorkingHoursDisplay),
            SizedBox(width: 20),
            Text(workingHoursConfig.monthlyMaxWorkingHoursDisplay),
          ],
        ));
  }
}
