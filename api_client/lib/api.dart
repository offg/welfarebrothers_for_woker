//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

library welfarebrothers_for_worker_api_client;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/care_service_categories_api.dart';
part 'api/facilities_api.dart';
part 'api/for_worker_api.dart';
part 'api/message_api.dart';
part 'api/prefectures_api.dart';
part 'api/users_api.dart';

part 'model/care_service.dart';
part 'model/care_service_category.dart';
part 'model/care_service_category_for_write.dart';
part 'model/care_service_for_write.dart';
part 'model/care_service_group.dart';
part 'model/care_service_group_for_write.dart';
part 'model/city.dart';
part 'model/city_for_write.dart';
part 'model/day_off_request.dart';
part 'model/day_off_request_for_write.dart';
part 'model/facility.dart';
part 'model/facility_administration.dart';
part 'model/facility_administration_for_write.dart';
part 'model/facility_availability.dart';
part 'model/facility_availability_for_write.dart';
part 'model/facility_for_worker.dart';
part 'model/facility_for_worker_for_write.dart';
part 'model/facility_for_write.dart';
part 'model/facility_worker_profile.dart';
part 'model/facility_worker_profile_for_write.dart';
part 'model/prefecture.dart';
part 'model/prefecture_for_write.dart';
part 'model/role.dart';
part 'model/role_assignment_requirement.dart';
part 'model/role_assignment_requirement_for_write.dart';
part 'model/role_for_write.dart';
part 'model/shift.dart';
part 'model/shift_config.dart';
part 'model/shift_config_for_write.dart';
part 'model/shift_pattern.dart';
part 'model/shift_pattern_for_write.dart';
part 'model/welfarebrothers_user.dart';
part 'model/welfarebrothers_user_profile.dart';
part 'model/welfarebrothers_user_profile_for_write.dart';
part 'model/work_schedule.dart';
part 'model/work_schedule_for_write.dart';
part 'model/work_schedule_summary.dart';
part 'model/worker_profile.dart';
part 'model/worker_profile_for_write.dart';
part 'model/worker_stat.dart';
part 'model/working_hours_config.dart';
part 'model/working_hours_config_for_write.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
