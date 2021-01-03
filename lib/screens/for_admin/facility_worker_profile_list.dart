import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/components/facility_worker_profile/facility_worker_profile_card.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_administration.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_worker_profile.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityWorkerProfileListScreen extends StatelessWidget {
  const FacilityWorkerProfileListScreen();

  @override
  Widget build(BuildContext context) {
    return Consumer<FacilityAdministrationViewModel>(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                SectionTitle("従業員一覧"),
                IconButton(
                  icon: Icon(Icons.add_rounded),
                  onPressed: () async {
                    FacilityWorkerProfile facilityWorkerProfile =
                        FacilityWorkerProfileExtension.withEmpty(model.currentFacilityAdministration);
                    Navigator.of(context).pushNamed("/staff/detail", arguments: facilityWorkerProfile);
                  },
                ),
              ]),
            ),
            Expanded(
              flex: 9,
              child: Consumer<FacilityWorkerProfileViewModel>(
                builder: (context, model, child) => _buildStaffList(context, model),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStaffList(BuildContext context, FacilityWorkerProfileViewModel model) {
    if (model.facilityWorkerProfiles?.isNotEmpty ?? false) {
      return ListView(
        children: model.facilityWorkerProfiles
            .map(
              (facilityWorkerProfile) => FacilityWorkerProfileCard(
                facilityWorkerProfile,
                () {
                  Navigator.of(context).pushNamed("/staff/detail", arguments: facilityWorkerProfile);
                },
              ),
            )
            .toList(),
      );
    }
    return Center(child: Text("従業員が登録されていません。"));
  }
}
