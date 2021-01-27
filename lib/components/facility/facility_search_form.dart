import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/loading_overlay.dart';
import 'package:welfarebrothers_for_worker/components/facility/area_form.dart';
import 'package:welfarebrothers_for_worker/components/facility/care_service_form.dart';
import 'package:welfarebrothers_for_worker/utils/input_decoration.dart';
import 'package:welfarebrothers_for_worker/view_models/facility_search_form.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

typedef Function OnFacilityTap(FacilityForWorker facility);
typedef Widget FacilityRenderer(FacilityForWorker facility);

class FacilitySearchForm extends StatefulWidget {
  GlobalKey<FormState> _abcKey = GlobalKey<FormState>();
  final OnFacilityTap onFacilityTap;
  final FacilityRenderer facilityRenderer;
  FacilitySearchForm({
    @required OnFacilityTap onFacilityTap,
    FacilityRenderer facilityRenderer,
  })  : onFacilityTap = onFacilityTap,
        facilityRenderer = facilityRenderer;
  @override
  _FacilitySearchFormState createState() => _FacilitySearchFormState();
}

class _FacilitySearchFormState extends State<FacilitySearchForm> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var _facilityRenderer = widget.facilityRenderer ?? _renderFacility;
    return Consumer<FacilitySearchFormViewModel>(
      builder: (_context, model, child) => CustomScrollView(
        key: widget._abcKey,
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
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
                ],
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 200,
            delegate: (model.facilities?.isEmpty ?? true)
                ? SliverChildListDelegate([Container()])
                : SliverChildBuilderDelegate(
                    (context, i) => _facilityRenderer(model.facilities[i]),
                  ),
          )
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
      onTap: widget.onFacilityTap(facility),
    );
  }
}
