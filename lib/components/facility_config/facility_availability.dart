import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/app/panel.dart';
import 'package:welfarebrothers_for_worker/components/app/section_title.dart';
import 'package:welfarebrothers_for_worker/components/input/days_of_the_week_choice.dart';
import 'package:welfarebrothers_for_worker/domain/facility_availability/facility_availability.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilityAvailabilityForm extends StatefulWidget {
  final FacilityAvailability facilityAvailability;
  FacilityAvailabilityForm(this.facilityAvailability);
  @override
  _FacilityAvailabilityForm createState() => _FacilityAvailabilityForm();
}

class _FacilityAvailabilityForm extends State<FacilityAvailabilityForm> {
  FacilityAvailability _facilityAvailability;
  GlobalKey<FormState> _facilityAvailabilityFormKey = new GlobalKey<FormState>();
  @override
  void initState() {
    _facilityAvailability = widget.facilityAvailability.clone();
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
              Navigator.of(context).pop(_facilityAvailability);
            },
          )
        ],
      ),
      body: Form(
        key: _facilityAvailabilityFormKey,
        child: Column(
          children: [
            SectionTitle("曜日ごとの空き状況"),
            Panel(
              child: DayOfTheWeekChoice(
                daysOfTheWeekChoiceStatusFromSelectedDays(_facilityAvailability.daysOfTheWeek),
                (int day) => (value) {
                  setState(() {
                    if (value) {
                      _facilityAvailability.daysOfTheWeek.add(day);
                    } else {
                      _facilityAvailability.daysOfTheWeek.remove(day);
                    }
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
