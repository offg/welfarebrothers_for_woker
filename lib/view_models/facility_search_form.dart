import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:welfarebrothers_for_worker/domain/area/area_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility/care_service_repository.dart';
import 'package:welfarebrothers_for_worker/domain/facility/facility_repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FacilitySearchFormViewModel extends WelfareBrothersViewModelBase {
  final IAreaRepository _areaRepository;
  final ICareServiceRepository _careServiceRepository;
  final IFacilityRepository _facilityRepository;
  FacilitySearchFormViewModel(this._areaRepository, this._careServiceRepository, this._facilityRepository);
  TextEditingController textEditingController;

  List<Prefecture> prefectures;
  String _currentPrefectureId;
  String get currentPrefectureId => _currentPrefectureId;
  Future setCurrentPrefectureId(String id) async {
    loading = true;
    _currentPrefectureId = id;
    _currentCityId = null;
    await _fetchCities();
    loading = false;
  }

  List<City> cities;
  String _currentCityId;
  String get currentCityId => _currentCityId;
  setCurrentCityId(String id) {
    _currentCityId = id;
    notifyListeners();
  }

  List<CareServiceCategory> careServiceCategories;
  String _currentCareServiceCategoryId;
  String get currentCareServiceCategoryId => _currentCareServiceCategoryId;
  Future setCurrentCareServiceCategoryId(String id) async {
    loading = true;
    _currentCareServiceCategoryId = id;
    _currentServiceGroupId = null;
    await _fetchCareServiceGroups();
    loading = false;
    notifyListeners();
  }

  List<CareServiceGroup> careServiceGroups;
  String _currentServiceGroupId;
  String get currentServiceGroupId => _currentServiceGroupId;
  setCurrentServiceGroupId(String id) {
    this._currentServiceGroupId = id;
    notifyListeners();
  }

  List<FacilityForWorker> facilities;

  bool get searchable =>
      (_currentPrefectureId != null &&
          _currentCityId != null &&
          _currentCareServiceCategoryId != null &&
          _currentServiceGroupId != null) ||
      (textEditingController.text != null && textEditingController.text.trim() != '');

  Future _debug() async {
    await this.setCurrentPrefectureId('43');
    this.setCurrentCityId('43101');
    await this.setCurrentCareServiceCategoryId('1');
    this.setCurrentServiceGroupId('1');
  }

  @override
  Future initialize() async {
    loading = true;
    this.textEditingController = TextEditingController();
    await _fetchPrefectures();
    await _fetchCareServiceCategories();
    this.facilities = [];
    this.cities = [];
    this.careServiceGroups = [];
    if (kDebugMode) await _debug();
    loading = false;
    notifyListeners();
    super.initialize();
  }

  Future searchFacilities() async {
    loading = true;
    await _fetchFacilities();
    loading = false;
  }

  Future _fetchPrefectures() async {
    this.prefectures = await _areaRepository.fetchPrefectures();
  }

  Future _fetchCities() async {
    this.cities = await _areaRepository.fetchCities(_currentPrefectureId);
  }

  Future _fetchCareServiceCategories() async {
    this.careServiceCategories = await _careServiceRepository.fetchCareServiceCategories();
  }

  Future _fetchCareServiceGroups() async {
    this.careServiceGroups = await _careServiceRepository.fetchCareServiceGroups(this._currentCareServiceCategoryId);
  }

  Future _fetchFacilities() async {
    this.facilities = await _facilityRepository.fetchFacilities(
      prefecture: _currentPrefectureId,
      city: _currentCityId,
      careServiceCategory: _currentCareServiceCategoryId,
      careServiceGroup: _currentServiceGroupId,
      keyword: textEditingController.text,
    );
  }
}
