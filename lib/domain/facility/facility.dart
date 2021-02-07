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

extension FacilityForWorkerExtension on FacilityForWorker {
  Facility asNormal() => Facility(
        id: this.id,
        name: this.name,
        category: this.category,
        group: this.group,
        careService: this.careService,
        tel: this.tel,
        city: this.city,
        prefecture: this.prefecture,
        address: this.address,
        building: this.building,
      );
}
