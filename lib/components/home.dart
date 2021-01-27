import 'package:flutter/material.dart';
import 'package:welfarebrothers_for_worker/constants/page.dart';

import 'app/tab_navigator.dart';

mixin HomeScreenStateMixin<T extends StatefulWidget> on State<T> {
  Map<TabItem, IconData> tabIcons;
  Map<TabItem, String> rootPathByTab;
  Map<TabItem, Function> routerBuilderByTab;
  Map<TabItem, Function> navigatorBuilderByTab;

  Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys;

  buildBody(currentTab, navigatorKeys) {
    return Column(children: [
      Expanded(
        child: Stack(
            children: rootPathByTab.entries
                .map(
                  (e) => buildTabItem(e.key, e.value, currentTab, navigatorKeys),
                )
                .toList()),
      )
    ]);
  }

  buildBottomNavigationBar(currentTab, onSelect) {
    return BottomNavigationBar(
        iconSize: 24,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: tabIcons.keys
            .map((e) => bottomItem(
                  context,
                  tabItem: e,
                  currentTab: currentTab,
                ))
            .toList(),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: Colors.transparent,
        onTap: onSelect);
  }

  Widget buildTabItem(TabItem tabItem, String root, currentTab, navigatorKeys) {
    return Offstage(
      offstage: currentTab != tabItem,
      child: TabNavigator(
        navigationKey: navigatorKeys[tabItem],
        routerName: root,
        routerBuilder: routerBuilderByTab[tabItem],
        navigatorBuilder: navigatorBuilderByTab[tabItem],
      ),
    );
  }

  BottomNavigationBarItem bottomItem(BuildContext context, {TabItem tabItem, currentTab}) {
    ThemeData theme = Theme.of(context);
    final color = currentTab == tabItem ? theme.primaryColor : Colors.black.withOpacity(0.8);
    return BottomNavigationBarItem(
      // backgroundColor: Colors.transparent,
      icon: Icon(
        tabIcons[tabItem],
        color: color,
      ),
      label: '',
    );
  }
}
