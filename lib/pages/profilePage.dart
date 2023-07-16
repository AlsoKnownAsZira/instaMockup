import 'package:flutter/material.dart';
import '../widgets/counterInfo.dart';
import '../widgets/profilePicture.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(
              Icons.lock,
              color: Colors.black,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              "Ziraaa_",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 2,
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              )),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
          Row(
            children: [
              profilePicture(),
              //follower, following, post count
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    counterInfo("Post", "3"),
                    counterInfo("Followers", "10"),
                    counterInfo("Following", "7")
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
            child: Text(
              "bril",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text:
                      "Hi there, Thanks for testing my app. Some Instagram features may not be available yet in this clone app, but stay tuned for future updates! ",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(text: "#WIP", style: TextStyle(color: Colors.blue))
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: Text(
              "github.com/AlsoKnownAsZira/instaMockup",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: OutlinedButton(
                onPressed: () {},
                child: Text("EDIT PROFILE",style: TextStyle(color: Colors.black),),
              ))
        ],
      ),
    );
  }
}
