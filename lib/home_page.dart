import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth_test_app/test_page.dart';

import 'base_page.dart';
import 'frame.dart';
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
            onPressed: () => push(context, '/test')));
  }
}
