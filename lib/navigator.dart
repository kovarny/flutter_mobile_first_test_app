// // 1
// import 'package:flutter/material.dart';

// import 'color_detail_page.dart';
// import 'colors_list_page.dart';
// import 'main.dart';
// import 'routes.dart';


// enum TabItem { red, green, blue }

// const Map<TabItem, String> tabName = {
//   TabItem.red: 'red',
//   TabItem.green: 'green',
//   TabItem.blue: 'blue',
// };

// // 2
// class TabNavigator extends StatelessWidget {
//   final GlobalKey<NavigatorState> navigatorKey;
//   final TabItem tabItem;
//   final ValueChanged<String> onPush;

//   TabNavigator(
//       {required this.navigatorKey,
//       required this.tabItem,
//       required this.onPush});

//   // // 3
//   // Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
//   //     {int materialIndex: 500}) {
//   //   return {
//   //     TabNavigatorRoutes.root: (context) => ColorsListPage(
//   //           color: Colors.amber,
//   //           title: 'amber',
//   //           onPush: (materialIndex) =>
//   //               _push(context, materialIndex: materialIndex),
//   //         ),
//   //     TabNavigatorRoutes.detail: (context) => ColorDetailPage(
//   //           color: Colors.brown,
//   //           title: 'brown',
//   //           materialIndex: materialIndex,
//   //         ),
//   //   };
//   // }

//   // 4
//   @override
//   Widget build(BuildContext context) {
//     // final routeBuilders = _routeBuilders(context);
//     return Navigator(
//       key: navigatorKey,
//       initialRoute: TabNavigatorRoutes.root,
//       onGenerateRoute: (routeSettings) {
//         return MaterialPageRoute(
//           builder: (context) => routeBuilders(
//               context, routeSettings.name)[routeSettings.name]!(context),
//         );
//       },
//     );
//   }

//   // 5
//   // void _push(BuildContext context, {int materialIndex: 500}) {
//   //   var routeBuilders = _routeBuilders(context, materialIndex: materialIndex);

//   //   navigatorKey1.currentState!.push(PageRouteBuilder(
//   //     pageBuilder: (context, animation1, animation2) =>
//   //         routeBuilders[TabNavigatorRoutes.detail]!(context),
//   //     transitionDuration: Duration.zero,
//   //     reverseTransitionDuration: Duration.zero,
//   //   )
//   //       // MaterialPageRoute(
//   //       // builder: (context) => routeBuilders[TabNavigatorRoutes.detail]!(context),

//   //       //)
//   //       );

//   //   // Navigator.push(
//   //   //   context,
//   //   //   MaterialPageRoute(
//   //   //     builder: (context) =>
//   //   //         routeBuilders[TabNavigatorRoutes.detail]!(context),
//   //   //   ),
//   //   // );
//   // }
// }
