import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/base_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailsPage1 extends ConsumerWidget {
  DetailsPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final message = args['id'].toString();

    return Scaffold(
        appBar: AppBar(
          title: Text('Details page'),
        ),
        body: Column(
          children: [
            Text(message),
            ElevatedButton(
              child: Text('Go to Next page'),
              onPressed: () {
                // pushRoute(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => DetailsPage(navigatorKey),
                //         settings: RouteSettings(name: '/details')));
                //push(context, '/details');
                // this
                //     .navigatorKey
                //     .currentState!
                //     .popUntil(ModalRoute.withName('/details'));
                // this.navigatorKey.currentState!.pushNamed('/details');
              },
            ),
          ],
        ));
  }
}
