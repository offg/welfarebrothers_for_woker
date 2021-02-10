import 'package:welfarebrothers_for_worker_api_client/api.dart';

extension FavoriteFacilityExtension on FavoriteFacility {
  FavoriteFacilityForWrite toWritable() {
    return FavoriteFacilityForWrite(facilityId: this.facility.id, profileId: this.profile.id);
  }
}
