import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  final String title;

  AppBarCustom(this.title);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
    );
  }
}
