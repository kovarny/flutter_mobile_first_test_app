import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth_test_app/test_page.dart';

import 'blank_page.dart';
import 'color_detail_page.dart';
import 'colors_list_page.dart';
import 'details_page.dart';
import 'home_page.dart';
import 'navigator.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String blank = '/blank';
  static const String detail = '/details';
  static const String test = '/test';
}

Map<String, WidgetBuilder> routeBuilders(
    BuildContext context, GlobalKey<NavigatorState> navigatorKey) {
  return {
    TabNavigatorRoutes.blank: (context) => BlankPage(),
    TabNavigatorRoutes.root: (context) => HomePage(navigatorKey),
    TabNavigatorRoutes.test: (context) => TestPage(navigatorKey),
    TabNavigatorRoutes.detail: (context) => DetailsPage(navigatorKey),
    //_push(context, materialIndex: materialIndex),
    // navigatorKey1.currentState!.push(PageRouteBuilder(
    //   pageBuilder: (context, animation1, animation2) =>
    //       routeBuilders[TabNavigatorRoutes.detail]!(context),
    //   transitionDuration: Duration.zero,
    //   reverseTransitionDuration: Duration.zero,
    // )

    // TabNavigatorRoutes.detail: (context) => ColorDetailPage(
    //     color: Colors.brown,
    //     title: 'brown',
    //     //materialIndex: materialIndex,
    //     push: (m) => push(m, navigatorKey)),
  };
}

MaterialPageRoute pageRouteBuilders(BuildContext context,
    GlobalKey<NavigatorState> navigatorKey, String routeName) {
  print('routeName: $routeName, current navigatorKey: $navigatorKey');

  switch (routeName) {
    case TabNavigatorRoutes.blank:
      return MaterialPageRoute(
          builder: (context) => BlankPage(),
          settings: RouteSettings(name: routeName));
    case TabNavigatorRoutes.root:
      return MaterialPageRoute(
          builder: (context) => HomePage(navigatorKey),
          settings: RouteSettings(name: routeName));
    case TabNavigatorRoutes.test:
      return MaterialPageRoute(
          builder: (context) => TestPage(navigatorKey),
          settings: RouteSettings(name: routeName));
    case TabNavigatorRoutes.detail:
      return MaterialPageRoute(
          builder: (context) => DetailsPage(navigatorKey),
          settings: RouteSettings(name: routeName));
    default:
      throw 'no page found for routeName: $routeName';
  }
}
