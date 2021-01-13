import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/view_models/for_caremanager/facility_search.dart';

class FacilityListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FacilitySearchViewModel>(
        builder: (context, model, child) => ListView.builder(
              itemCount: model.facilities.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(model.facilities[index].name),
              ),
            ));
  }
}
