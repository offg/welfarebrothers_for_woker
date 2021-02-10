import 'package:welfarebrothers_for_worker_api_client/api.dart';

extension FacilityUserLinkExtension on FacilityUserLink {
  FacilityUserLinkForWrite toWritable() {
    print(this);
    return FacilityUserLinkForWrite(
      workerProfileId: this.workerProfile.id,
      stateId: this.state.id,
      typeId: this.type.id,
      facilityAdministrationId: this.facilityAdministration.id,
      verifiedById: this.verifiedBy?.id,
    );
  }
}
