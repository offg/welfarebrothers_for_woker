import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/home.dart';
import 'package:welfarebrothers_for_worker/constants/page.dart';
import 'package:welfarebrothers_for_worker/screens/for_caremanager/facility_coordination/facility_coordination.dart';
import 'package:welfarebrothers_for_worker/screens/for_caremanager/facility_coordination/facility_search.dart';
import 'package:welfarebrothers_for_worker/screens/for_caremanager/facility_coordination/request.dart';
import 'package:welfarebrothers_for_worker/screens/me.dart';

class ForCaremanagerHomeScreen extends StatefulWidget {
  @override
  _ForCaremanagerHomeScreenState createState() => _ForCaremanagerHomeScreenState();
}

class _ForCaremanagerHomeScreenState extends State<ForCaremanagerHomeScreen> with HomeScreenStateMixin {
  final Map<TabItem, IconData> tabIcons = const {
    TabItem.facility_coordination: Icons.home_work_sharp,
    TabItem.me: Icons.person_sharp,
  };
  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.facility_coordination: GlobalKey<NavigatorState>(),
    TabItem.me: GlobalKey<NavigatorState>(),
  };
  final Map<TabItem, String> rootPathByTab = {
    TabItem.facility_coordination: '/facility_coordination',
    TabItem.me: '/me',
  };

  final Map<TabItem, Function> routerBuilderByTab = {
    TabItem.facility_coordination: (context) => {
          '/': (context) => const FacilityCoordinationScreen(),
          '/search': (context) => const FacilitySearchScreen(),
          '/requests': (context) => const FacilityCoordinationRequestScreen(),
        },
    TabItem.me: (context) => {
          '/': (context) => MeScreen(),
        }
  };
  final Map<TabItem, Function> navigatorBuilderByTab = {
    TabItem.facility_coordination: (navigator) => navigator,
    TabItem.me: (navigator) => navigator,
  };
  TabItem _currentTab = TabItem.facility_coordination;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: buildBody(_currentTab, navigatorKeys),
        bottomNavigationBar: buildBottomNavigationBar(_currentTab, onSelect));
  }

  void onSelect(int index) {
    TabItem tabItem = tabIcons.keys.toList()[index];
    if (_currentTab == tabItem) {
      navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
      setState(() {
        _currentTab = tabItem;
      });
    } else {
      setState(() {
        _currentTab = tabItem;
      });
    }
  }
}
