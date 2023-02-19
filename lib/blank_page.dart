import 'package:flutter/material.dart';

import 'navigator.dart';

class BlankPage extends StatelessWidget {
  const BlankPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Container());
  }
}
