import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/home.dart';
import 'package:welfarebrothers_for_worker/screens/general/home.dart';
import 'package:welfarebrothers_for_worker_api_client/api.dart';

String homePathForUser(User user) {
  if (user == null) return "/general";
  var userGroupNames = user.groups.map((e) => e.name);
  if (userGroupNames.contains("facility_admin")) {
    return "/facility_admin";
  } else {
    return "/general";
  }
}

Widget homeForUser(User user) {
  if (user == null) return HomeScreen();
  var userGroupNames = user.groups.map((e) => e.name);
  if (userGroupNames.contains("facility_admin")) {
    return ForAdminHomeScreen();
  } else {
    return HomeScreen();
  }
}
