import 'package:flutter/material.dart';
import 'profile_page.dart';

void main() {
  runApp(MaterialApp(
    title: "edit profile",
    home: EditPassword(),
  ));
}

class EditPassword extends StatefulWidget {
  const EditPassword({super.key});

  @override
  State<EditPassword> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<EditPassword> {
  bool isOpsecurepassword = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Change Password"),
          backgroundColor: Colors.blue.shade900,
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            buildContent("Password", "", true),
            buildContent("Konfirmasi Password", "", true),
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
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade900,
                    minimumSize: Size(150, 40),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: TextStyle(
                      fontSize: 20,
                    ),
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
