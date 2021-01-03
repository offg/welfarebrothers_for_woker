import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welfarebrothers_for_worker/components/app/bottom_navigator.dart';
import 'package:welfarebrothers_for_worker/components/app/tab_navigator.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/facility_administration.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/facility_worker_profile_detail.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/facility_worker_profile_list.dart';
import 'package:welfarebrothers_for_worker/screens/for_admin/shift_config.dart';
import 'package:welfarebrothers_for_worker/screens/me.dart';
import 'package:welfarebrothers_for_worker/view_models/me.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TabItem _currentTab = TabItem.facility_management;
  Map<TabItem, GlobalKey<NavigatorState>> _navigatorKeys = {
    TabItem.facility_management: GlobalKey<NavigatorState>(),
    TabItem.me: GlobalKey<NavigatorState>(),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        drawer: Drawer(
          child: Text('foo'),
        ),
        body: Column(children: [
          Expanded(
            child: Stack(children: [
              _buildTabItem(TabItem.facility_management, '/facility'),
              _buildTabItem(TabItem.me, '/me'),
            ]),
          )
        ]),
        bottomNavigationBar: BottomNavigation(currentTab: _currentTab, onSelect: onSelect));
  }

  Map<TabItem, Function> routerBuilderByTab = {
    TabItem.facility_management: (context) => {
          '/': (context) => const FacilityAdministrationScreen(),
          '/workers': (context) => const FacilityWorkerProfileListScreen(),
          '/workers/detail': (context) => const FacilityWorkerProfileDetailScreen(),
          '/shift_config': (context) => const ShiftConfigScreen(),
        },
    TabItem.me: (context) => {
          '/': (context) => MeScreen(),
        }
  };
  Map<TabItem, Function> navigatorBuilderByTab = {
    TabItem.facility_management: (navigator) => navigator,
    TabItem.me: (navigator) => ChangeNotifierProvider(
          create: (_) => MeViewModel()..initialize(),
          child: navigator,
        ),
  };
  Widget _buildTabItem(
    TabItem tabItem,
    String root,
  ) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigationKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
        routerName: root,
        routerBuilder: routerBuilderByTab[tabItem],
        navigatorBuilder: navigatorBuilderByTab[tabItem],
      ),
    );
  }

  void onSelect(TabItem tabItem) {
    if (_currentTab == tabItem) {
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentTab = tabItem;
      });
    }
  }
}
