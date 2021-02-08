import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/utils/design.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

import 'availabilities.dart';

class FacilityForWorkerCard extends StatelessWidget {
  final FacilityForWorker facility;
  final Widget header;
  final onFacilityTap;
  FacilityForWorkerCard({
    @required FacilityForWorker facility,
    @required Widget header,
    @required onFacilityTap,
  })  : this.facility = facility,
        this.header = header,
        this.onFacilityTap = onFacilityTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header,
              verticalSpace(size: 12),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    facility.address ?? "",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                horizontalSpace(size: 40),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.phone_sharp),
                      horizontalSpace(size: 10),
                      Text(
                        facility.tel ?? "",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ]),
              verticalSpace(size: 18),
              Availabilities(availableDaysInWeek: facility?.availableDaysOfTheWeek ?? List<int>()),
            ],
          ),
        ),
      ),
    );
  }
}
