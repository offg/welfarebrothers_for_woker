import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/components/home.dart';
import 'package:welfarebrothers_for_worker/constants/page.dart';
import 'package:welfarebrothers_for_worker/screens/general/facility_search.dart';
import 'package:welfarebrothers_for_worker/screens/general/favorite_facility.dart';
import 'package:welfarebrothers_for_worker/screens/general/me.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with HomeScreenStateMixin<HomeScreen> {
  final tabIcons = const {TabItem.facility_search: Icons.search_sharp, TabItem.me: Icons.person_sharp};
  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.facility_search: GlobalKey<NavigatorState>(),
    TabItem.me: GlobalKey<NavigatorState>(),
  };
  final Map<TabItem, String> rootPathByTab = {
    TabItem.facility_search: "/search",
    TabItem.me: "/me",
  };
  final routerBuilderByTab = {
    TabItem.facility_search: (context) => {'/': (context) => FacilitySearchScreen()},
    TabItem.me: (context) => {
          '/': (context) => MeScreen(),
          '/favorite_facility': (context) => FavoriteFacilityScreen(),
        }
  };
  final Map<TabItem, Function> navigatorBuilderByTab = {
    TabItem.facility_search: (navigator) => navigator,
    TabItem.me: (navigator) => navigator,
  };
  TabItem _currentTab;
  @override
  void initState() {
    setState(() {
      _currentTab = TabItem.facility_search;
    });
    super.initState();
  }

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
