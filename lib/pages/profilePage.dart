import 'package:flutter/material.dart';
import '../widgets/counterInfo.dart';
import '../widgets/profilePicture.dart';
class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  children: [counterInfo("Post", "3"),counterInfo("Followers", "10"),counterInfo("Following", "7")],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


