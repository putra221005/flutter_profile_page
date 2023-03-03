import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'profile_page.dart';

void main() {
  runApp(MaterialApp(
    title: "edit profile",
    home: EditProfile(),
  ));
}

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<EditProfile> {
  bool isOpsecurepassword = true;
  final double coverHeight = 240;
  final double profilHeight = 145;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("EDIT PROFILE"),
          backgroundColor: Colors.blue.shade900,
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(height: 35),
            buildprofileimage(),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    maxLines: 4,
                    decoration:
                        InputDecoration(hintText: "Masukkan Biodata Anda"),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            buildContent("Full Name", "Masukkan Nama Lengkap Anda", false),
            buildContent("Email", "Masukkan Email", false),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade900,
                      minimumSize: Size(150, 40)),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ProfilePage();
                        },
                      ));
                    });
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade900,
                      minimumSize: Size(150, 40)),
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            )
          ],
        ),
      ),
    );
  }

  Widget buildprofileimage() => Center(
        child: Stack(
          children: [
            Container(
              width: 97,
              height: 97,
              decoration: BoxDecoration(
                  border: Border.all(width: 4, color: Colors.white),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.rancahpost.com/wp-content/uploads/2022/01/Cara-Mengunci-Foto-Profil-FB.png"))),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1, color: Color.fromARGB(255, 255, 255, 255)),
                  color: Colors.blue.shade900,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
  Widget buildContent(
      String labelText, String placeholder, bool isPasswordField) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordField ? isOpsecurepassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isOpsecurepassword = !isOpsecurepassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ))
                : null,
            contentPadding: EdgeInsets.only(bottom: 6),
            labelText: labelText,
            hintText: placeholder,
            hintStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w300, color: Colors.grey)),
      ),
    );
  }
}
