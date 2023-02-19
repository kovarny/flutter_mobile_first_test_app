import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'frame.dart';
import 'home_page.dart';
import 'navigator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            primaryColor: Colors.white,
            backgroundColor: Color(0xff181a1b),
            colorScheme: const ColorScheme(
                primary: Color(0xffcdcbc9),
                secondary: Colors.grey,
                onPrimary: Colors.blueGrey,
                onSecondary: Color(0xff303035),
                background: Color(0xff303035),
                surface: Colors.black54,
                onSurface: Color(0xffcdcbc9),
                onBackground: Color(0xffcdcbc9),
                error: Colors.red,
                brightness: Brightness.dark,
                onError: Color(0xffcdcbc9))),
        title: 'Mobile First Framework Test App',
        //home: Frame(),
        // initialRoute: '/',
        home: App()
        // Navigator(
        //   onGenerateRoute: (RouteSettings settings) {
        //     print('onGenerateRoute: ${settings}');
        //     // if (settings.name == '/' || settings.name == 'search') {
        //     // if (settings.name == '/' || settings.name == 'vacancies') {
        //     //   return PageRouteBuilder(pageBuilder: (_, __, ___) => DashboardPage());
        //     // }
        //     if (settings.name == '/') {
        //       return PageRouteBuilder(pageBuilder: (_, __, ___) => HomePage());
        //     }
        //     return (settings.arguments as dynamic)['target'] as PageRouteBuilder;
        //   },
        // ),
        );
  }
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  // var _currentTab = TabItem.red;
  // final _navigatorKeys = {
  //   TabItem.red: GlobalKey<NavigatorState>(),
  //   TabItem.green: GlobalKey<NavigatorState>(),
  //   TabItem.blue: GlobalKey<NavigatorState>(),
  // };

  // void _selectTab(TabItem tabItem) {
  //   setState(() => _currentTab = tabItem);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Frame(count: 3),
      // bottomNavigationBar: BottomNavigation(
      //   currentTab: _currentTab,
      //   onSelectTab: _selectTab,
      // ),
    );
  }

  // Widget _buildOffstageNavigator(TabItem tabItem) {
  //   return Offstage(
  //     offstage: _currentTab != tabItem,
  //     child: TabNavigator(
  //       navigatorKey: navigatorKeys[tabItem],
  //       tabItem: tabItem,
  //     ),
  //   );
  // }
}


// class TheApp extends ConsumerStatefulWidget {
//   const TheApp({Key? key}) : super(key: key);
//   @override
//   TheAppState createState() => TheAppState();
// }

// class TheAppState extends ConsumerState<TheApp> {
//   //bool isLoading = false;
//   @override
//   void initState() {
//     super.initState();
//     ref.read(isLoading.notifier).value = true;
//     FirebaseAuth.instance.authStateChanges().listen((User? user) {
//       if (user == null) {
//         ref.read(isLoggedIn.notifier).value = false;
//         ref.read(isLoading.notifier).value = false;
//       } else {
//         ref.read(isLoggedIn.notifier).value = true;
//         ref.read(isLoading.notifier).value = false;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (ref.watch(isLoading)) {
//       return Center(
//         child: Container(
//           alignment: Alignment(0.0, 0.0),
//           child: CircularProgressIndicator(),
//         ),
//       );
//     } else {
//       return Scaffold(
//           appBar: AppBar(
//             actions: [
//               CurrentUserAvatar(),
//               IconButton(
//                 icon: Icon(Icons.exit_to_app),
//                 onPressed: () => FirebaseAuth.instance.signOut(),
//               )
//             ],
//           ),
//           body: Row(
//             children: [
//               Expanded(
//                   child: LoginScreen('login', 'test', {
//                 "loginGitHub": false,
//                 "loginGoogle": true,
//                 "loginEmail": false,
//                 "loginSSO": false,
//                 "loginAnonymous": true,
//                 "signupOption": false,
//               })),
//               ref.watch(authStateChangesSP).when(
//                   loading: () => Container(),
//                   error: (e, s) => ErrorWidget(e),
//                   data: (user) => user == null
//                       ? Text('Signed out')
//                       : Column(
//                           children: [
//                             Text('signed in as: ${user.uid}'),
//                             Divider(),
//                             Text('UserChip:'),
//                             UserChip(user.displayName ?? "Unknown Dolphin",
//                                 user.photoURL ?? 'Some image'),
//                             Divider(),
//                             Text('UserAvatar:'),
//                             UserAvatar(user.photoURL ?? 'Some image')
//                           ],
//                         ))
//             ],
//           ));
//     }
//   }
// }

// final StreamProvider<User?> authStateChangesSP =
//     StreamProvider<User?>((ref) => FirebaseAuth.instance.authStateChanges());
