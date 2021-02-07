import 'package:welfarebrothers_for_worker/domain/repository.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

abstract class IFavoriteFacilityRepository implements IRepository {
  Future<List<FavoriteFacility>> fetchFavoriteFacilities(WelfarebrothersUserProfile userProfile);
  Future<FavoriteFacility> createFavoriteFacility(WelfarebrothersUserProfile userProfile, String facilityId);
  Future deleteFavoriteFacility(WelfarebrothersUserProfile userProfile, int favoriteFacilityId);
}
