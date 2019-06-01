import 'package:flutter/material.dart';
import 'package:skillmeet/routes/screens.dart';
import 'package:skillmeet/shared/styles.dart';

void main() {
  runApp(FlutterMeet(
    initialScreen: LoginScreen(),
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
        // Profile screen
        ProfileScreen.route: (_) => ProfileScreen(),
        // About screen
        AboutScreen.route: (_) => AboutScreen(),
      },
    );
  }
}
