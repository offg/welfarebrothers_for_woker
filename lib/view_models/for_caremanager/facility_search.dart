import 'package:welfarebrothers_for_worker/domain/facility/facility_repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilitySearchViewModel extends WelfareBrothersViewModelBase {
  final IFacilityRepository _repository;
  FacilitySearchViewModel(this._repository);
  List<FacilityForWorker> _facilities;
  List<FacilityForWorker> get facilities => _facilities;
  set facilities(List<FacilityForWorker> facilities) {
    _facilities = facilities;
    notifyListeners();
  }

  @override
  Future initialize() async {
    loading = true;
    _facilities = await _repository.fetchFacilities();
    loading = false;
  }
}
