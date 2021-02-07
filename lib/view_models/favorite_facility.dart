import 'package:welfarebrothers_for_worker/domain/favorite_facility/repository.dart';
import 'package:welfarebrothers_for_worker/view_models/base.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FavoriteFacilityViewModel extends WelfareBrothersViewModelBase {
  IFavoriteFacilityRepository _favoriteFacilityRepository;

  FavoriteFacilityViewModel(this._favoriteFacilityRepository);
  List<FavoriteFacility> favoriteFacilities = new List();

  bool hasBeenFavorited(Facility facility) => favoriteFacilities.map((e) => e.facility.id).contains(facility.id);

  Future createFavoriteFacility(Facility facility) async {
    loading = true;
    await _favoriteFacilityRepository.createFavoriteFacility(appViewModel.profile, facility.id);
    await fetchFavoriteFacilities();
    loading = false;
    notifyListeners();
  }

  Future fetchFavoriteFacilities() async {
    if (!ready && !authenticated) {
      return;
    }
    loading = true;
    favoriteFacilities = await _favoriteFacilityRepository.fetchFavoriteFacilities(appViewModel.profile);
    loading = false;
  }

  Future deleteFavoriteFacility(FavoriteFacility favoriteFacility) async {
    loading = true;
    await _favoriteFacilityRepository.deleteFavoriteFacility(appViewModel.profile, favoriteFacility.id);
    await fetchFavoriteFacilities();
    loading = false;
  }

  @override
  Future initialize() async {
    if (!ready && !authenticated) {
      return;
    }
    loading = true;
    await fetchFavoriteFacilities();
    loading = false;
  }
}
