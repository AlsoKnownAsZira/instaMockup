import 'dart:math';

import 'package:flutter/material.dart';
import '../widgets/counterInfo.dart';
import '../widgets/profilePicture.dart';
import '../widgets/highlights.dart';

// ignore_for_file: prefer_const_constructors
class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

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
              children: const [
                Highlight(
                    highlight_title: "TEST",
                    image_asset: 'assets/images/ppzira.jpg'),
                Highlight(
                    highlight_title: "TEST2",
                    image_asset: 'assets/images/ppzira.jpg'),
              ],
            ),
          ),
          TabBar(
            indicatorColor: Colors.black,
            padding: EdgeInsets.zero,
            controller: tabController,
            tabs: const [
              Tab(
                  icon: Icon(
                Icons.grid_on_rounded,
                color: Colors.black,
              )),
              Tab(
                  icon: Icon(
                Icons.person_pin_outlined,
                color: Colors.black,
              )),
            ],
          ),
          SizedBox(height: 5,),
          GridView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 1,crossAxisSpacing: 5),
            children: [
              Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/ppzira.jpg"),fit: BoxFit.cover)
              ),
            ),
             Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/ppzira.jpg"),fit: BoxFit.cover)
              ),
            )
            ],
          )
        ],
      ),
    );
  }
}
