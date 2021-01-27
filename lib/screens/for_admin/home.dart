import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/app/tab_navigator.dart';
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

class _ForAdminHomeScreenState extends State<ForAdminHomeScreen> {
  TabItem _currentTab = TabItem.facility_administration;
  final Map<TabItem, IconData> tabIcon = const {
    TabItem.facility_administration: Icons.home_work_sharp,
    TabItem.me: Icons.person_sharp,
  };
  Map<TabItem, GlobalKey<NavigatorState>> _navigatorKeys = {
    TabItem.facility_administration: GlobalKey<NavigatorState>(),
    TabItem.me: GlobalKey<NavigatorState>(),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        Expanded(
          child: Stack(
            children: [
              _buildTabItem(TabItem.facility_administration, '/facility'),
              _buildTabItem(TabItem.me, '/me'),
            ],
          ),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 24,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          items: <BottomNavigationBarItem>[
            bottomItem(
              context,
              tabItem: TabItem.facility_administration,
            ),
            bottomItem(
              context,
              tabItem: TabItem.me,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.transparent,
          onTap: onSelect),
    );
  }

  BottomNavigationBarItem bottomItem(
    BuildContext context, {
    TabItem tabItem,
  }) {
    ThemeData theme = Theme.of(context);
    final color = _currentTab == tabItem ? theme.primaryColor : Colors.black.withOpacity(0.8);
    return BottomNavigationBarItem(
      // backgroundColor: Colors.transparent,
      icon: Icon(
        tabIcon[tabItem],
        color: color,
      ),
      label: '',
    );
  }

  Map<TabItem, Function> routerBuilderByTab = {
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
  Map<TabItem, Function> navigatorBuilderByTab = {
    TabItem.facility_administration: (navigator) => navigator,
    TabItem.me: (navigator) => navigator,
  };
  Widget _buildTabItem(
    TabItem tabItem,
    String root,
  ) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigationKey: _navigatorKeys[tabItem],
        routerName: root,
        routerBuilder: routerBuilderByTab[tabItem],
        navigatorBuilder: navigatorBuilderByTab[tabItem],
      ),
    );
  }

  void onSelect(int index) {
    TabItem tabItem = TabItem.values[index];
    if (_currentTab == tabItem) {
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentTab = tabItem;
      });
    }
  }
}
