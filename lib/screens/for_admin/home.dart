import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/home.dart';
import 'package:welfarebrothers_for_worker/constants/page.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/facility_administration.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/facility_config/facility_config.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/facility_worker_profile/facility_worker_profile_detail.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/facility_worker_profile/facility_worker_profile_list.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/shift_config.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/work_schedule/work_schedule_detail.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/work_schedule/work_schedule_list.dart';
import 'package:welfarebrothers_for_worker/screens/me.dart';

class ForAdminHomeScreen extends StatefulWidget {
  @override
  _ForAdminHomeScreenState createState() => _ForAdminHomeScreenState();
}

enum UserType { administrator, worker, careManager }

class _ForAdminHomeScreenState extends State<ForAdminHomeScreen> with HomeScreenStateMixin {
  final Map<TabItem, IconData> tabIcons = const {
    TabItem.facility_administration: Icons.home_work_sharp,
    TabItem.me: Icons.person_sharp,
  };
  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.facility_administration: GlobalKey<NavigatorState>(),
    TabItem.me: GlobalKey<NavigatorState>(),
  };
  final Map<TabItem, Function> routerBuilderByTab = {
    TabItem.facility_administration: (context) => {
          '/': (context) => const FacilityAdministrationScreen(),
          '/workers': (context) => const FacilityWorkerProfileListScreen(),
          '/workers/detail': (context) => const FacilityWorkerProfileDetailScreen(),
          '/shift_config': (context) => const ShiftConfigScreen(),
          '/work_schedules': (context) => const WorkScheduleListScreen(),
          '/work_schedules/detail': (context) => const WorkScheduleDetailScreen(),
          '/config/availability': (context) => const FacilityConfigScreen(),
        },
    TabItem.me: (context) => {
          '/': (context) => MeScreen(),
        }
  };
  final Map<TabItem, Function> navigatorBuilderByTab = {
    TabItem.facility_administration: (navigator) => navigator,
    TabItem.me: (navigator) => navigator,
  };
  TabItem _currentTab = TabItem.facility_administration;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: buildBody(_currentTab, navigatorKeys),
        bottomNavigationBar: buildBottomNavigationBar(_currentTab, onSelect));
  }

  void onSelect(int index) {
    TabItem tabItem = TabItem.values[index];
    if (_currentTab == tabItem) {
      navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentTab = tabItem;
      });
    }
  }
}
