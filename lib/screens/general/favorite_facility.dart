import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/components/facility/facility_for_worker_card.dart';
import 'package:welfarebrothers_for_worker/view_models/favorite_facility.dart';

class FavoriteFacilityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<FavoriteFacilityViewModel>(
        builder: (context, model, child) => model.favoriteFacilities.isEmpty
            ? Center(
                child: Text("お気に入り施設が登録されていません"),
              )
            : ListView(
                children: model.favoriteFacilities
                    .map((e) => FacilityForWorkerCard(
                        facility: e.facility,
                        header: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              e.facility.name,
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            IconButton(
                                icon: Icon(Icons.star_sharp),
                                iconSize: 16,
                                onPressed: () async {
                                  const duration = Duration(milliseconds: 300);
                                  await LoadingOverlay.of(context).during(model.deleteFavoriteFacility(e));
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text("お気に入りから削除しました"),
                                    duration: duration,
                                  ));
                                }),
                          ],
                        ),
                        onFacilityTap: null))
                    .toList(),
              ),
      ),
    );
  }
}
