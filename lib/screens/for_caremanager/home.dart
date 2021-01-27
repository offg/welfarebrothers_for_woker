import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/app/tab_navigator.dart';
import 'package:welfarebrothers_for_worker/constants/page.dart';
import 'package:welfarebrothers_for_worker/screens/for_caremanager/facility_coordination/facility_coordination.dart';
import 'package:welfarebrothers_for_worker/screens/for_caremanager/facility_coordination/facility_search.dart';
import 'package:welfarebrothers_for_worker/screens/for_caremanager/facility_coordination/request.dart';
import 'package:welfarebrothers_for_worker/screens/me.dart';

class ForCaremanagerHomeScreen extends StatefulWidget {
  @override
  _ForCaremanagerHomeScreenState createState() => _ForCaremanagerHomeScreenState();
}

class _ForCaremanagerHomeScreenState extends State<ForCaremanagerHomeScreen> {
  TabItem _currentTab = TabItem.facility_coordination;
  Map<TabItem, GlobalKey<NavigatorState>> _navigatorKeys = {
    TabItem.facility_coordination: GlobalKey<NavigatorState>(),
    TabItem.me: GlobalKey<NavigatorState>(),
  };
  final Map<TabItem, IconData> tabIcon = const {
    TabItem.facility_coordination: Icons.home_work_sharp,
    TabItem.me: Icons.person_sharp,
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
              _buildTabItem(TabItem.facility_coordination, '/facility_coordination'),
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
              tabItem: TabItem.facility_coordination,
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

  Map<TabItem, Function> routerBuilderByTab = {
    TabItem.facility_coordination: (context) => {
          '/': (context) => const FacilityCoordinationScreen(),
          '/search': (context) => const FacilitySearchScreen(),
          '/requests': (context) => const FacilityCoordinationRequestScreen(),
        },
    TabItem.me: (context) => {
          '/': (context) => MeScreen(),
        }
  };
  Map<TabItem, Function> navigatorBuilderByTab = {
    TabItem.facility_coordination: (navigator) => navigator,
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
