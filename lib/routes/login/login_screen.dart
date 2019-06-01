import 'package:flutter/material.dart';

// Firebase
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:skillmeet/about.dart';
import 'package:skillmeet/profile/ProfileScreen.dart';

class LoginScreen extends StatefulWidget {
  static const String route = '/loginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> _handleSignIn() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user = await _auth.signInWithCredential(credential);
    print("signed in " + user.displayName);
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          /*decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/loginbg.jpg"),
              fit: BoxFit.cover,
            ),
          ),*/
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 75.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    child: Image(
                      image: AssetImage('assets/smblogo.jpg'),
                    ),
                  ),
                ), /*Image(
                          width: 250.0,
                          height: 191.0,
                          fit: BoxFit.fill,
                          image: new AssetImage('assets/loginimg.png')),*/
              ),
              SizedBox(
                height: 100.0,
              ),
              InkWell(
                onTap: () {
                  _handleSignIn().then((FirebaseUser user) {
                    Navigator.of(context).pushNamed('/landingpage');
                  }).catchError((e) {
                    print(e);
                  });
                 /* Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=> ProfileSection())
                  );*/
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 70.0,
                          height: 70.0,
                          child: Image(
                            image: AssetImage('assets/glogo.png'),
                          ),
                        ),
                        Container(
                            child: Text(
                          "Sign In With Google",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22.0),
                        ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
