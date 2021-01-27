import 'package:welfarebrothers_for_worker_api_client/api.dart';

extension CareServiceGroupExtension on CareServiceGroup {
  String displayName() {
    return [this.name, this.category.name].join(' / ');
  }
}

extension CareServiceExtension on CareService {
  String displayName() {
    return [this.name, this.group.displayName()].join(' / ');
  }
}
