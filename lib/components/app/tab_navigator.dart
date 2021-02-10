import 'package:flutter/material.dart';

class TabNavigator extends StatelessWidget {
  final String routerName;
  final GlobalKey<NavigatorState> navigationKey;
  final Map<String, Widget Function(BuildContext)> Function(BuildContext) routerBuilder;
  final navigatorBuilder;

  const TabNavigator(
      {Key key,
      @required this.routerName,
      @required this.navigationKey,
      @required this.routerBuilder,
      @required this.navigatorBuilder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _routerBuilder = this.routerBuilder(context);

    return navigatorBuilder(Navigator(
      key: navigationKey,
      initialRoute: '/',
      onGenerateRoute: (settings) {
        return MaterialPageRoute<Widget>(
          settings: settings,
          builder: (context) {
            return _routerBuilder[settings.name](context);
          },
        );
      },
    ));
  }
}
