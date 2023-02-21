import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/base_page.dart';
import 'package:flutter_firebase_auth/frame.dart';
import 'package:flutter_firebase_auth/navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'details_page.dart';

class TestPage1 extends ConsumerWidget {
  TestPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test Page'),
        ),
        body: Container(
          color: Colors.white,
          child: _buildList(),
        ));
  }

  Widget _buildList() {
    return ListView.builder(
        itemCount: materialIndices.length,
        itemBuilder: (BuildContext context, int index) {
          int materialIndex = materialIndices[index];
          return Container(
            color: Colors.grey[500],
            child: ListTile(
              title: Text('$materialIndex', style: TextStyle(fontSize: 24.0)),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Frame.pushPage1(context, 2, '/details', DetailsPage1()
                    //MaterialPageRoute(builder: builder)
                    // PageRouteBuilder(
                    //   settings: RouteSettings(
                    //     name: '/details',
                    //     arguments: {'pop': true, 'id': materialIndex},
                    //   ),
                    //   pageBuilder: (context, a, b) => DetailsPage1(),
                    //   //fullscreenDialog: true,
                    // )
                    );

                // pushRoute(
                //   context,
                //   // DetailsPage(navigatorKeys[2]),
                //   // RouteSettings(name: '/details'),
                //   PageRouteBuilder(
                //       settings: RouteSettings(
                //         name: '/details',
                //         arguments: {'pop': true, 'id': materialIndex},
                //       ),
                //       pageBuilder: (context, a, b) =>
                //           DetailsPage(navigatorKeys[2]),
                //       fullscreenDialog: true),
                // );
              },
            ),
          );
        });
  }

  final List<int> materialIndices = [
    900,
    800,
    700,
    600,
    500,
    400,
    300,
    200,
    100,
    50
  ];
}
