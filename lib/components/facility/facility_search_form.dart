import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/components/facility/area_form.dart';
import 'package:welfarebrothers_for_worker/components/facility/care_service_form.dart';
import 'package:welfarebrothers_for_worker/utils/design.dart';
import 'package:welfarebrothers_for_worker/utils/input_decoration.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_search_form.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

typedef Function OnFacilityTap(FacilityForWorker facility);

class FacilitySearchForm extends StatelessWidget {
  final OnFacilityTap onFacilityTap;
  FacilitySearchForm({OnFacilityTap onFacilityTap}) : onFacilityTap = onFacilityTap;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<FacilitySearchFormViewModel>(
      builder: (_context, model, child) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            child: AreaForm(),
            padding: EdgeInsets.only(left: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CareServiceForm(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              controller: model.textEditingController,
              decoration: inputDecoration(context, "キーワード (施設名等)"),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: RaisedButton(
              child: Text("検索"),
              onPressed: model.searchable
                  ? () async {
                      await LoadingOverlay.of(context).during(model.searchFacilities());
                    }
                  : null,
            ),
          ),
          verticalSpace(size: 20),
          Expanded(
            child: (model.facilities == null || model.facilities.isEmpty)
                ? Container()
                : ListView(
                    // shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    children: model.facilities.map((e) => _renderFacility(e)).toList(),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _renderFacility(FacilityForWorker facility) {
    return ListTile(
      contentPadding: EdgeInsets.all(8),
      isThreeLine: true,
      title: Text(
        [facility.category.name, facility.group.name, facility.careService.name].join(' / '),
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey.shade400,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Text(
          facility.name,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
      ),
      dense: true,
      trailing: Icon(Icons.navigate_next_sharp),
      onTap: onFacilityTap(facility),
    );
  }
}
