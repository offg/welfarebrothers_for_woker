import 'package:flutter/material.dart';

import './tab_navigator.dart';

const tabIcon = <TabItem, IconData>{
  TabItem.facility_management: Icons.home_work,
  TabItem.me: Icons.person_rounded,
};

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key key,
    this.currentTab,
    this.onSelect,
  }) : super(key: key);

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelect;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 24,
      selectedFontSize: 0,
      unselectedFontSize: 0,
      items: <BottomNavigationBarItem>[
        bottomItem(
          context,
          tabItem: TabItem.facility_management,
        ),
        bottomItem(
          context,
          tabItem: TabItem.me,
        ),
      ],
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      backgroundColor: Colors.transparent,
      onTap: (index) {
        onSelect(TabItem.values[index]);
      },
    );
  }

  BottomNavigationBarItem bottomItem(
    BuildContext context, {
    TabItem tabItem,
  }) {
    ThemeData theme = Theme.of(context);
    final color = currentTab == tabItem ? theme.primaryColor : Colors.black.withOpacity(0.8);
    return BottomNavigationBarItem(
      // backgroundColor: Colors.transparent,
      icon: Icon(
        tabIcon[tabItem],
        color: color,
      ),
      label: '',
    );
  }
}
