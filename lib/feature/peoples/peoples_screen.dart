import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PeoplesScreen extends StatefulWidget {
  static const String route = '/peoplesScreen';

  @override
  _PeoplesScreenState createState() => _PeoplesScreenState();
}

class _PeoplesScreenState extends State<PeoplesScreen> {
  Widget buildList(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('users').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return new Text('Loading...');
          default:
            return new ListView(
              children: snapshot.data.documents.map(
                (DocumentSnapshot document) {
                  return new ListTile(
                    title: new Text(document.data['firstName']),
                    subtitle: new Text(document.data['lastName']),
                  );
                },
              ).toList(),
            );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            child: buildList(context),
          ),
        ),
      ),
    );
  }
}
