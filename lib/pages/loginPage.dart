import 'package:flutter/material.dart';
import 'package:insta_mockup/pages/profilePage.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

bool hidePass = true;
String corrEmail = 'zira@gmail.com';
String corrPass = 'testing123';
TextEditingController emailControl = TextEditingController();
TextEditingController passControl = TextEditingController();

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Instagram",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Grandista',
                fontSize: 38,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: emailControl,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  labelText: 'Email Adress'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passControl,
              obscureText: hidePass,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        if (hidePass == true) {
                          hidePass = false;
                        } else {
                          hidePass = true;
                        }
                        setState(() {});
                      },
                      icon: Icon(Icons.remove_red_eye))),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (emailControl.text == corrEmail) {
                    if (passControl.text == corrPass) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => profilePage(),
                          ),
                          (route) => false);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Wrong password")));
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Username or password is wrong")));
                  }
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 45,
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
