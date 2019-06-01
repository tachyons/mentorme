import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
      ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Image(image: AssetImage('assets/figma.png'),),
      ),
    ) ,
        ],
      ),
    );
  }
}
