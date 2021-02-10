import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_search_form.dart';

class CareServiceForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FacilitySearchFormViewModel>(
      builder: (_context, model, child) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_drop_down_sharp),
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                iconSize: 0,
                hint: Text("カテゴリー分類"),
                value: model.currentCareServiceCategoryId,
                items: (model.careServiceCategories ?? []).isEmpty
                    ? null
                    : model.careServiceCategories
                        .map((e) => DropdownMenuItem(
                              value: e.id,
                              child: Text(e.name),
                            ))
                        .toList(),
                onChanged: (value) async {
                  await LoadingOverlay.of(context).during(model.setCurrentCareServiceCategoryId(value));
                },
              ),
            ),
          ),
          Icon(Icons.arrow_drop_down_sharp),
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                iconSize: 0,
                value: model.currentServiceGroupId,
                hint: FittedBox(
                  child: Text("カテゴリー"),
                  fit: BoxFit.contain,
                ),
                items: (model.careServiceGroups ?? []).isEmpty
                    ? null
                    : model.careServiceGroups
                        .map((e) => DropdownMenuItem(
                              value: e.id,
                              child: Text(e.name),
                            ))
                        .toList(),
                onChanged: (value) async {
                  model.setCurrentServiceGroupId(value);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
