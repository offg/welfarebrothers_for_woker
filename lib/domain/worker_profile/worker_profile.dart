import 'package:welfarebrothers_for_worker_api_client/api.dart';

extension WorkerProfileExtension on WorkerProfile {
  WorkerProfileForWrite toWritable() => WorkerProfileForWrite(
        userProfileId: this.userProfile.id,
      );
}
