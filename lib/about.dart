import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        //drawer: myDrawer(),
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 230.0,
            floating: true,
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              background: Image(
                image: AssetImage('assets/figma.png'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://aboobacker.in/images/bio-photo.jpg"),
                        minRadius: 40.0,
                      ),
                      Text(
                        "Aboobacker MK",
                        style: TextStyle(fontSize: 24.0),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://scontent.fblr2-1.fna.fbcdn.net/v/t1.0-9/30571693_1660450437408495_3256457393671766016_n.jpg?_nc_cat=106&_nc_ht=scontent.fblr2-1.fna&oh=bf16fea82091401d76f79f4e8da15269&oe=5D58ADC4"),
                        minRadius: 40.0,
                      ),
                      Text(
                        "Mihil Jose",
                        style: TextStyle(fontSize: 24.0),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://scontent.fblr2-1.fna.fbcdn.net/v/t1.0-9/27973453_1176886129114101_7101484796690856494_n.jpg?_nc_cat=102&_nc_ht=scontent.fblr2-1.fna&oh=643cc412029df3c24f65a8bd32eb57da&oe=5D539F3F"),
                        minRadius: 40.0,
                      ),
                      Text(
                        "Chrisbin Sunny",
                        style: TextStyle(fontSize: 24.0),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/figma.png'),
                        minRadius: 40.0,
                      ),
                      Text(
                        "Binay Agarwall",
                        style: TextStyle(fontSize: 24.0),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://scontent.fblr2-1.fna.fbcdn.net/v/t1.0-9/15178287_720541291456363_2324580979931718066_n.jpg?_nc_cat=102&_nc_ht=scontent.fblr2-1.fna&oh=a50a6ee9782201a5e9862c64dceb2e88&oe=5D59FF95"),
                      minRadius: 40.0,
                    ),
                    Text(
                      "Mohammed Vasid",
                      style: TextStyle(fontSize: 24.0),
                    )
                  ],
                )
              ],
            ),
          ),
        ]));
  }
}
