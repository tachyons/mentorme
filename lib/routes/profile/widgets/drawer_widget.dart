import 'package:flutter/material.dart';
import 'package:skillmeet/routes/about/about_screen.dart';
import 'package:skillmeet/routes/profile/profile_screen.dart';

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
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: ListTile(
              title: Text('Home'),
              leading: Icon(
                Icons.home,
                color: Colors.blue,
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AboutScreen()));
            },
            child: ListTile(
              title: Text('About'),
              leading: Icon(
                Icons.code,
                color: Colors.redAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
