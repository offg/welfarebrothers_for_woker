import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_search_form.dart';

class AreaForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FacilitySearchFormViewModel>(
      builder: (_context, model, child) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.arrow_drop_down_sharp),
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: Text("都道府県"),
                isExpanded: true,
                iconSize: 0,
                value: model.currentPrefectureId,
                items: (model.prefectures ?? []).isEmpty
                    ? null
                    : model.prefectures
                        .map((e) => DropdownMenuItem(
                              value: e.id,
                              child: Text(e.name),
                            ))
                        .toList(),
                onChanged: (value) async {
                  await LoadingOverlay.of(context).during(model.setCurrentPrefectureId(value));
                },
              ),
            ),
          ),
          Icon(Icons.arrow_drop_down_sharp),
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                value: model.currentCityId,
                hint: Text("市区町村"),
                iconSize: 0,
                items: (model.cities ?? []).isEmpty
                    ? null
                    : model.cities
                        .map((e) => DropdownMenuItem(
                              value: e.id,
                              child: Text(e.name),
                            ))
                        .toList(),
                onChanged: (value) async {
                  model.setCurrentCityId(value);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
