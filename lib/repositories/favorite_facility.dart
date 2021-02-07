import 'package:welfarebrothers_for_worker/domain/favorite_facility/repository.dart';
import 'package:welfarebrothers_for_worker/services/api_client.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

class FavoriteFacilityApiRepository implements IFavoriteFacilityRepository {
  WelfarebrothersApiClient _client;
  FavoriteFacilityApiRepository(this._client);

  @override
  Future<FavoriteFacility> createFavoriteFacility(WelfarebrothersUserProfile userProfile, String facilityId) async {
    return await _client.forWorkerApi.forWorkerUserProfileFavoriteFacilitiesCreate(userProfile.id.toString(),
        userProfile.user.id.toString(), FavoriteFacilityForWrite(facilityId: facilityId, profileId: userProfile.id));
  }

  @override
  Future deleteFavoriteFacility(WelfarebrothersUserProfile userProfile, int favoriteFacilityId) async {
    return await _client.forWorkerApi.forWorkerUserProfileFavoriteFacilitiesDelete(
        favoriteFacilityId, userProfile.id.toString(), userProfile.user.id.toString());
  }

  @override
  Future<List<FavoriteFacility>> fetchFavoriteFacilities(WelfarebrothersUserProfile userProfile) async {
    return await _client.forWorkerApi
        .forWorkerUserProfileFavoriteFacilitiesList(userProfile.id.toString(), userProfile.user.id.toString());
  }
}
