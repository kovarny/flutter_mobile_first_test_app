import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth_test_app/base_page.dart';

import 'frame.dart';
import 'home_page.dart';
import 'home_screen.dart';

class TestPage extends BasePage {
  TestPage(navigatorKey, {Key? key}) : super(navigatorKey, key: key);

  @override
  Widget build(BuildContext context) {
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
              onTap: () => push(context, '/details'),
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
