import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/facility_worker_profile/facility_worker_profile_form.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityWorkerProfileDetailScreen extends StatelessWidget {
  const FacilityWorkerProfileDetailScreen();

  @override
  Widget build(BuildContext context) {
    final FacilityWorkerProfile facilityWorkerProfile = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: FacilityWorkerProfileForm(facilityWorkerProfile),
      ),
    );
  }
}
