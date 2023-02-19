import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/base_page.dart';
import 'package:flutter_firebase_auth/frame.dart';
import 'package:flutter_firebase_auth_test_app/test_page.dart';

import 'home_screen.dart';

class HomePage extends BasePage {
  HomePage(navigatorKey, {Key? key}) : super(navigatorKey, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: ElevatedButton(
            child: Text('go to test'),
            onPressed: () => pushRoute(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TestPage(navigatorKeys[1])),
                )));
  }
}
