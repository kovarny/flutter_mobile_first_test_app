import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth_test_app/routes.dart';

import 'frame.dart';
import 'home_page.dart';
import 'home_screen.dart';

abstract class BasePage extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  BasePage(this.navigatorKey, {Key? key}) : super(key: key) {
    print('BasePage constructor ${this.navigatorKey.hashCode}');
  }

  void push(BuildContext context, String routeName) {
    //print('Current route: ${ModalRoute()}');

    // var route = ModalRoute.of(context);
    // if (route != null) print(route.settings);
    // String currentRoute = ModalRoute.of(context)?.settings.name ?? '';
    // print('current route: ${currentRoute}');
    // if (route != null &&
    //     route.settings.name != null &&
    //     routeName == route.settings.name) {
    //   print('popUntil $routeName');
    //   this.navigatorKey.currentState!.popUntil(ModalRoute.withName(routeName));
    // }
    String? currentPath;
    navigatorKey.currentState?.popUntil((route) {
      currentPath = route.settings.name;
      // print('pop:  ${route.settings.name}, ${route.isCurrent}');
      // return route.isCurrent;
      return currentPath != route;
    });
    print('pushNamed: $routeName, currentPath $currentPath');
    if (currentPath == routeName) return;

    // this.navigatorKey.currentState!.push(MaterialPageRoute(
    //     builder: (context) =>
    //         routeBuilders(context, navigatorKey)[routeName]!(context),

    //     settings: RouteSettings(name: routeName)));

    GlobalKey<NavigatorState> key =
        getNextNavigatorKey(navigatorKeys, this.navigatorKey);

    key.currentState!.push(
      pageRouteBuilders(context, key, routeName),
    );
    // this
    //     .navigatorKey
    // currentState!.push(pageRouteBuilders(context, navigatorKey, routeName));
  }

//   String getCurrentRouteName(BuildContext context) {
//   final NavigatorState navigator = Navigator.of(context);
//   final ModalRoute<dynamic> route = navigator?.accessibleNavigation?.current;
//   return route?.settings?.name;
// }
}
