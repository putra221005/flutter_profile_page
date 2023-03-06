import 'package:flutter/material.dart';
import 'package:flutter_profile_page/profilepagehome/edit_password.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'edit_profile.dart';

void main() {
  runApp(MaterialApp(
    title: "App",
    home: ProfilePage(),
  ));
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("PROFILE"),
          backgroundColor: Colors.blue.shade900,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.menu_outlined))
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://p4.wallpaperbetter.com/wallpaper/343/997/87/abstract-blue-artistic-cgi-wallpaper-preview.jpg"),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/3135/3135768.png"),
                        radius: 25,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Muhammad Yusuf Maulana Putra",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "[Title]",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      color: Color.fromARGB(255, 240, 240, 240),
                      width: double.infinity,
                      child: ListTile(
                        leading: Icon(Icons.wb_sunny_outlined),
                        title: Text("Theme"),
                        trailing: Icon(Icons.arrow_right),
                        iconColor: Colors.black87,
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      color: Color.fromARGB(255, 240, 240, 240),
                      child: ListTile(
                        leading: Icon(Icons.person_outline),
                        title: Text("Edit Profile"),
                        trailing: Icon(Icons.arrow_right),
                        iconColor: Colors.black87,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return EditProfile();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      color: Color.fromARGB(255, 240, 240, 240),
                      width: double.infinity,
                      child: ListTile(
                        leading: Icon(Icons.key),
                        title: Text("Change Password"),
                        trailing: Icon(Icons.arrow_right),
                        iconColor: Colors.black87,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return EditPassword();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      color: Color.fromARGB(255, 240, 240, 240),
                      width: double.infinity,
                      child: ListTile(
                        leading: Icon(Icons.info_outline),
                        title: Text("About"),
                        trailing: Icon(Icons.arrow_right),
                        iconColor: Colors.black87,
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      color: Color.fromARGB(255, 240, 240, 240),
                      width: double.infinity,
                      child: ListTile(
                        leading: Icon(Icons.power_settings_new),
                        iconColor: Color.fromARGB(255, 255, 0, 0),
                        title: Text("Logout"),
                        textColor: Color.fromARGB(255, 255, 0, 0),
                        trailing: Icon(Icons.arrow_right),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
