import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("PROFILE"),
          backgroundColor: Color.fromARGB(255, 255, 0, 0),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color.fromARGB(255, 255, 0, 0),
                      Color.fromARGB(255, 255, 123, 0)
                    ])),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/3135/3135768.png"),
                        radius: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Muhammad Yusuf Maulana Putra",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "[Title]",
                        style: TextStyle(color: Colors.white, fontSize: 15),
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
                      height: 0,
                    ),
                    Container(
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: TextField(
                            maxLines: 3,
                            decoration: InputDecoration(
                                hintText: "Masukkan Biodata Anda"),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      leading: Icon(Icons.location_history),
                      title: Text("Edit Profile"),
                      trailing: Icon(Icons.arrow_right),
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      leading: Icon(Icons.key),
                      title: Text("Change password"),
                      trailing: Icon(Icons.arrow_right),
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      leading: Icon(Icons.info),
                      title: Text("About"),
                      trailing: Icon(Icons.arrow_right),
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 255, 0, 0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Save Changes",
                              style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
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