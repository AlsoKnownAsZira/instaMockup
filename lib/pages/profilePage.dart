import 'dart:math';

import 'package:flutter/material.dart';
import 'package:insta_mockup/widgets/postDetail.dart';
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

  List<String> imagesPost = [
    "assets/images/boat.jpg",
    "assets/images/cat.jpg",
    "assets/images/sushi.jpg",
  ];
  List<String> caption = [
    "Nice holiday",
    "Cute little meow meow",
    "Itadakimasu!"
  ];
  List<int> likeCounts = [7, 10, 6];

  // opening image tapped
  void openPostDetail(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => postDetail(
              imageList: imagesPost,
              selectedIndex: index,
              imageCapt: caption,
              likeCount: likeCounts),
        ));
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

// handling tab changes
  int currentIndex = 4;
  void tapTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: tapTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Plus',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: 'Reels',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
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
                    counterInfo("Posts", "3"),
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
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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
                    highlight_title: "Nom nom",
                    image_asset: 'assets/images/hl1.jpg'),
                Highlight(
                    highlight_title: "Meow meow",
                    image_asset: 'assets/images/hl2.jpg'),
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
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 190,
            child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: tabController,
                children: [
                  GridView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 5),
                    children: [
                      GestureDetector(
                        onTap: () => openPostDetail(0),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/boat.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => openPostDetail(1),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/cat.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => openPostDetail(2),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/sushi.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      )
                    ],
                  ),
                  GridView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 5),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/tagged.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
