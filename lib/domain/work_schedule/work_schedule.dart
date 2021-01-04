import 'package:welfarebrothers_for_worker_api_client/api.dart';

extension WorkScheduleExtension on WorkSchedule {
  WorkScheduleForWrite toWritable() => WorkScheduleForWrite(
        facilityAdministrationId: this.facilityAdministration.id,
        dateFrom: this.dateFrom,
        dateTo: this.dateTo,
      );
}
