import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth_test_app/blank_page.dart';
import 'package:flutter_firebase_auth_test_app/home_page.dart';
import 'package:flutter_firebase_auth_test_app/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'desktop_frame.dart';
import 'mobile_frame.dart';
import 'navigator.dart';

final List<GlobalKey<NavigatorState>> navigatorKeys =
    List.generate(4, (index) => GlobalKey<NavigatorState>());

class Frame extends ConsumerWidget {
  final int count;
  int currentIndex = 0;
  Frame({Key? key, this.count = 1}) : super(key: key) {}

  @override
  Widget build(BuildContext context, WidgetRef ref) =>
      MediaQuery.of(context).size.width > 600 || count > 1
          ? Row(
              children: List.generate(
                  count,
                  (index) => Expanded(
                          child: Navigator(
                        key: navigatorKeys[index],
                        initialRoute: index == 0
                            ? TabNavigatorRoutes.root
                            : TabNavigatorRoutes.blank,
                        onGenerateInitialRoutes: (navigator, initialRoute) =>
                            index == 0
                                ? [
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            HomePage(navigatorKeys[0]))
                                  ]
                                : [
                                    MaterialPageRoute(
                                        builder: (context) => BlankPage(),
                                        fullscreenDialog: true)
                                  ],
                        onGenerateRoute: (routeSettings) {
                          print(
                              'onGenerateRoute: ${index}, ${index < count - 1 ? index + 1 : count - 1}');
                          return pageRouteBuilders(
                              context,
                              navigatorKeys[0]
                              // navigatorKeys[
                              //     index < count - 1 ? index + 1 : count - 1],
                              ,
                              routeSettings.name!);
                          // return MaterialPageRoute(
                          //   builder: (context) =>
                          //   routeBuilders(
                          //       context,
                          //       navigatorKeys[index < count - 1
                          //           ? index + 1
                          //           : count - 1])[routeSettings.name]!(context),

                          // );
                        },
                      ))))
          // <Widget>[
          //     Expanded(
          //         child: TabNavigator(
          //       navigatorKey: navigatorKey,
          //       tabItem: TabItem.blue,
          //     )),
          //     Expanded(
          //         child: TabNavigator(
          //       navigatorKey: navigatorKey1,
          //       tabItem: TabItem.red,
          //     )),
          //   ])
          : Navigator();

  // push(value, navigatorKey) {
  //   print('onPush: $value');
  //   navigatorKey.currentState!.push(PageRouteBuilder(
  //     pageBuilder: (context, animation1, animation2) => routeBuilders(
  //       context,
  //       TabNavigatorRoutes.detail,
  //     )[TabNavigatorRoutes.detail]!(
  //       context,
  //     ),
  //     transitionDuration: Duration.zero,
  //     reverseTransitionDuration: Duration.zero,
  //   ));
  //   // navigatorKey1.currentState!.push(PageRouteBuilder(
  //   //   pageBuilder: (context, animation1, animation2) =>
  //   //       routeBuilders[TabNavigatorRoutes.detail]!(context),
  //   //   transitionDuration: Duration.zero,
  //   //   reverseTransitionDuration: Duration.zero,
  //   // )
  // }
  // Navigator(onGenerateRoute: (RouteSettings settings) {
  //   // print('onGenerateRoute: ${settings}');
  //   // if (settings.name == '/' || settings.name == 'search') {
  //   if (settings.name == '/' || settings.name == 'vacancies') {
  //     return PageRouteBuilder(pageBuilder: (_, __, ___) => DashboardPage());
  //   }
  // });
}
