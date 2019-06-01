import 'package:flutter/material.dart';
import 'package:skillmeet/profile/ProfileScreen.dart';
import 'package:skillmeet/about.dart';



class myDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: new ListView(
        children: <Widget>[
//            header


//            body
          /* InkWell(
            onTap: (){

              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> HomePage())
              );
            },
            child: ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home,color: Colors.orangeAccent,),
            ),
          ),
          Divider(),*/
          InkWell(
            onTap: (){

              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> ProfileSection())
              );
            },
            child: ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home,color: Colors.blue,),
            ),
          ),



          InkWell(
            onTap: (){

              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> AboutPage())
              );
            },
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.code,color: Colors.redAccent,),
            ),
          ),



        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'http://mihiljose.com/privacy_policy';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

