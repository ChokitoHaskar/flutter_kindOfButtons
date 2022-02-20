import 'package:flutter/material.dart';

import 'homePage.dart';

void main() async {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  static const String title = "Kind of Buttons Flutter";

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
