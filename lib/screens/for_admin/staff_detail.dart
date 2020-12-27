import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/facility_worker/staff_profile_form.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/facility_worker_profile.dart';

class StaffDetailScreen extends StatelessWidget {
  const StaffDetailScreen();

  @override
  Widget build(BuildContext context) {
    final FacilityWorkerProfile facilityWorkerProfile = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: StaffProfileForm(facilityWorkerProfile),
      ),
    );
  }
}
