import 'package:welfarebrothers_for_worker_api_client/api.dart';

extension WelfarebrothersUserProfileExtension on WelfarebrothersUserProfile {
  WelfarebrothersUserProfileForWrite toWritable() {
    return WelfarebrothersUserProfileForWrite(
      userId: this.userId,
      lastName: this.lastName,
      firstName: this.firstName,
    );
  }
}
