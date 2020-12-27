import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/components/facility_worker/staff_card.dart';
import 'package:welfarebrothers_for_worker/config/locator.dart';
import 'package:welfarebrothers_for_worker/domain/facility_worker_profile/repository.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_management.dart';
import 'package:welfarebrothers_for_worker/view_models/staff.dart';

class StaffListScreen extends StatelessWidget {
  const StaffListScreen();

  @override
  Widget build(BuildContext context) {
    return Consumer<FacilityManagementViewModel>(
      builder: (context, model, child) => ChangeNotifierProvider<StaffViewModel>(
        create: (_) => StaffViewModel(model.currentFacilityId, locator<IFacilityWorkerProfileRepository>())..initialize(),
        child: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              SectionTitle("従業員一覧"),
              Expanded(
                flex: 1,
                child: Consumer<StaffViewModel>(
                  builder: (context, model, child) => ListView(
                    children: model.facilityWorkerProfiles
                        .map((facilityWorkerProfile) => StaffCard(
                              facilityWorkerProfile,
                              () {
                                Navigator.of(context).pushNamed("/staff/detail", arguments: facilityWorkerProfile);
                              },
                            ))
                        .toList(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
