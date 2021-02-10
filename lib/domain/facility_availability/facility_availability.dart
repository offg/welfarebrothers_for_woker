import 'dart:convert';

import 'package:welfarebrothers_for_worker_api_client/api.dart';

extension FacilityAvailabilityExtension on FacilityAvailability {
  FacilityAvailabilityForWrite toWritable() => FacilityAvailabilityForWrite(
        facilityAdministrationId: this.facilityAdministration.id,
        daysOfTheWeek: this.daysOfTheWeek,
      );
  static FacilityAvailability withEmpty(FacilityAdministration facilityAdministration) => FacilityAvailability(
        facilityAdministration: facilityAdministration,
      );
  FacilityAvailability clone() => FacilityAvailability.fromJson(json.decode(json.encode(this)));
}
