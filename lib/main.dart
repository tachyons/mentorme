import 'package:flutter/material.dart';
import 'package:skillmeet/feature/screens.dart';
import 'package:skillmeet/shared/styles.dart';

void main() {
  runApp(FlutterMeet(
    initialScreen: PeoplesScreen(),
  ));
}

class FlutterMeet extends StatelessWidget {
  const FlutterMeet({@required this.initialScreen});

  final Widget initialScreen;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Meet',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: initialScreen,
      routes: <String, WidgetBuilder>{
        // Login screen
        LoginScreen.route: (_) => LoginScreen(),
        // Peoples screen
        PeoplesScreen.route: (_) => PeoplesScreen(),
      },
    );
  }
}
