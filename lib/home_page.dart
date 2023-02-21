import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/base_page.dart';
import 'package:flutter_firebase_auth/frame.dart';
import 'package:flutter_firebase_auth/navigator.dart';
import 'package:flutter_firebase_auth_test_app/test_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'details_page.dart';

class HomePage1 extends ConsumerWidget {
  HomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: ElevatedButton(
            child: Text('go to test'),
            onPressed: () => {
                  Frame.pushPage(
                      context,
                      1,
                      MediaQuery.of(context).size.width > 600
                          ? PageRouteBuilder(
                              settings: RouteSettings(
                                name: '/details',
                                arguments: {'pop': true, 'id': 123},
                              ),
                              pageBuilder: (context, a, b) => TestPage1(),
                              //fullscreenDialog: true,
                            )
                          : MaterialPageRoute(
                              builder: (context) => TestPage1(),
                              settings: RouteSettings(name: '/details'),
                            ))
                }));
  }
}
