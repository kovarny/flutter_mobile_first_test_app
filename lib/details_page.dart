import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/base_page.dart';
import 'home_page.dart';
import 'home_screen.dart';

class DetailsPage extends BasePage {
  // final GlobalKey<NavigatorState> navigatorKey;

  DetailsPage(navigatorKey, {Key? key}) : super(navigatorKey, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details page'),
      ),
      body: ElevatedButton(
        child: Text('Go to Next page'),
        onPressed: () {
          MaterialPageRoute(
              builder: (context) => DetailsPage(navigatorKey),
              settings: RouteSettings(name: '/details'));
          //push(context, '/details');
          // this
          //     .navigatorKey
          //     .currentState!
          //     .popUntil(ModalRoute.withName('/details'));
          // this.navigatorKey.currentState!.pushNamed('/details');
        },
      ),
    );
  }
}
