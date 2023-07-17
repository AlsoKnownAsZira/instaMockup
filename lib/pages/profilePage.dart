import 'package:flutter/material.dart';
import '../widgets/counterInfo.dart';
import '../widgets/profilePicture.dart';

// ignore_for_file: prefer_const_constructors
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
          children: const [
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
              text: TextSpan(children: const [
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
              child: Text(
                "EDIT PROFILE",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
             
              children: [
                                 Highlight(
                    highlight_title: "TEST",
                    image_asset: 'assets/images/ppzira.jpg'),
                Highlight(
                    highlight_title: "TEST2",
                    image_asset: 'assets/images/ppzira.jpg'),
                    
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Highlight extends StatelessWidget {
  const Highlight({
    required this.highlight_title,
    required this.image_asset,
    super.key,
  });
  final String highlight_title;
  final String image_asset;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {},
            child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white),
                    borderRadius: BorderRadius.circular(60),
                    image: DecorationImage(
                      image: AssetImage(image_asset),
                      fit: BoxFit.cover,
                    ))),
            style: ElevatedButton.styleFrom(shape: CircleBorder())),
        SizedBox(
          height: 5,
        ),
        Text(highlight_title)
      ],
    );
  }
}
