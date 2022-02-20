import 'package:flutter/material.dart';
import 'package:kinds_of_button/Buttons/stylizedButtons.dart';

import 'Buttons/defaultButtons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KIND OF BUTTONS"),
        centerTitle: true,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView(
          children: const <Widget>[
            Center(
              heightFactor: 1.5,
              child: Text(
                'Default Button',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            DefaultButtons(),
            SizedBox(height: 25),
            Center(
              heightFactor: 1.5,
              child: Text(
                'Stylized Buttons',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            StylizedButtons(),
          ],
        ),
      ),
    );
  }
}
