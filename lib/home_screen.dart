// import 'package:flutter/material.dart';
// import 'package:flutter_firebase_auth_test_app/test_page.dart';

// import 'home_page.dart';
// import 'home_screen_content.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       Expanded(
//         child: HomeScreenContent(),
//       ),
//       Center(
//         child: ElevatedButton(
//           child: Text('Go to Test Page'),
//           onPressed: () {
//             //Navigator.pushNamed(context, '/');
//             Navigator.pushNamed(context, '/test', arguments: {
//               'prev': HomePage(),
//               'target':
//                   PageRouteBuilder(pageBuilder: (_, __, ___) => TestPage(1))
//             });
//           },
//         ),
//       ),
//     ]);
//   }
// }
