import 'package:flutter/material.dart';

class ColorDetailPage extends StatelessWidget {
  ColorDetailPage(
      {required this.color,
      required this.title,
      this.materialIndex: 500,
      required this.push});
  final MaterialColor color;
  final String title;
  final int materialIndex;
  final ValueChanged<String> push;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text(
          '$title[$materialIndex]',
        ),
      ),
      body: Container(
        color: color[materialIndex],
      ),
    );
  }
}
