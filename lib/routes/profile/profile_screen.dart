import 'package:flutter/material.dart';
import 'package:flutter_chips_input/flutter_chips_input.dart';
import 'package:skillmeet/routes/profile/widgets/widgets.dart';

class ProfileScreen extends StatefulWidget {
  static const String route = '/profileScreen';

  @override
  State<StatefulWidget> createState() {
    return ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer(),
      appBar: new AppBar(
        title: new Text("Customise Profile"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),//space
              Center(
                child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn2.iconfinder.com/data/icons/ios-7-icons/50/user_male2-512.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ])),
              ), //image
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),//space
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 50,
                    width: 300,
                    color: Colors.grey.withOpacity(.5),
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "Google User's Name",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ), //UserName
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),//space
              Padding(
                padding: EdgeInsets.only(
                    left:MediaQuery.of(context).size.width/30,
                ),
                child: Text(
                  "Skills I Know:",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),//text
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 10),
                child: Wrap(
                  spacing: 5.0,
                  children: <Widget>[
                    ChipsInput(
//                    initialValue: [
//                      Skills('John Doe', 'jdoe@flutter.io', 'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX4057996.jpg')
//                    ],
                      decoration: InputDecoration(
                        labelText: "Select Skills",
                      ),
                      maxChips: 5,
                      findSuggestions: (String query) {
                        if (query.length != 0) {
                          var lowercaseQuery = query.toLowerCase();
                          return availableSkills.where((skill) {
                            return skill.name.toLowerCase().contains(query.toLowerCase());
                          }).toList(growable: false)
                            ..sort((a, b) => a.name
                                .toLowerCase()
                                .indexOf(lowercaseQuery)
                                .compareTo(b.name.toLowerCase().indexOf(lowercaseQuery)));
                        } else {
                          return const <Skills>[];
                        }
                      },
                      onChanged: (data) {
                        print(data);
                      },
                      chipBuilder: (context, state, skill) {
                        return InputChip(
                          key: ObjectKey(skill),
                          label: Text(skill.name),
                          onDeleted: () => state.deleteChip(skill),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        );
                      },
                      suggestionBuilder: (context, state, skill) {
                        return ListTile(
                          key: ObjectKey(skill),
                          title: Text(skill.name),
                          onTap: () => state.selectSuggestion(skill),
                        );
                      },
                    )

//                  InputChip(
//                      avatar: CircleAvatar(
//                        backgroundColor: Colors.grey.shade800,
//                        child: Text('AB'),
//                      ),
//                      label: Text('Aaron Burr'),
//                      onPressed: () {
//                        print('I am the one thing in life.');
//                      }),
                  ],
                ),
              ),//wrap
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),//space
              Padding(
                padding: EdgeInsets.only(
                  left:MediaQuery.of(context).size.width/30),
                child: Text(
                  "Skills to Study:",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),//text
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 10),
                child: Wrap(
                  spacing: 5.0,
                  children: <Widget>[
                    ChipsInput(
//                    initialValue: [
//                      Skills('John Doe', 'jdoe@flutter.io', 'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX4057996.jpg')
//                    ],
                      decoration: InputDecoration(
                        labelText: "Select Skills",
                      ),
                      maxChips: 5,
                      findSuggestions: (String query) {
                        if (query.length != 0) {
                          var lowercaseQuery = query.toLowerCase();
                          return availableSkills.where((profile) {
                            return profile.name.toLowerCase().contains(query.toLowerCase());
                          }).toList(growable: false)
                            ..sort((a, b) => a.name
                                .toLowerCase()
                                .indexOf(lowercaseQuery)
                                .compareTo(b.name.toLowerCase().indexOf(lowercaseQuery)));
                        } else {
                          return const <Skills>[];
                        }
                      },
                      onChanged: (data) {
                        print(data);
                      },
                      chipBuilder: (context, state, profile) {
                        return InputChip(
                          key: ObjectKey(profile),
                          label: Text(profile.name),
                          onDeleted: () => state.deleteChip(profile),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        );
                      },
                      suggestionBuilder: (context, state, profile) {
                        return ListTile(
                          key: ObjectKey(profile),
                          title: Text(profile.name),
                          onTap: () => state.selectSuggestion(profile),
                        );
                      },
                    )
                  ],
                ),
              ),//wrap
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),//space
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width/2.5,
                  height: 50,
                  child: RaisedButton(
                    onPressed: (){},

                    child: Text("Save",style: TextStyle(
                      fontSize: 25,
                    ),),
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 150),
              ),//space
            ],
          ),
        ),
      ),
    );
  }

}

const availableSkills = <Skills>[
  Skills('Flutter'),
  Skills('Dart'),
  Skills('C'),
  Skills('C++'),
  Skills('Ruby'),
  Skills('Python'),
  Skills('Java'),
  Skills('Kotlin'),
  Skills('Photoshop'),
  Skills('Premiere Pro'),
  Skills('After Effects'),
  Skills('Final Cut Pro'),
];

class Skills {
  final String name;

  const Skills(this.name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Skills && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() {
    return 'Skill{$name}';
  }
}