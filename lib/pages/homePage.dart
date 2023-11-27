import 'package:flutter/material.dart';
import 'package:insta_mockup/widgets/DM.dart';
import 'package:insta_mockup/widgets/NotifHomePage.dart';
import 'package:insta_mockup/widgets/openOthersStory.dart';
import 'package:insta_mockup/widgets/ziraStory.dart';
import 'searchPage.dart';
import 'uploadPage.dart';
import 'reelsPage.dart';
import 'profilePage.dart';
import '../widgets/storyGrid.dart';
import '../widgets/homePost.dart';
// ignore_for_file: prefer_const_constructors
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int currentIndex = 0;
  final List<Widget> pagesList = [
    homePage(),
    searchPage(),
    uploadPage(),
    reelsPage(),
    profilePage(),
  ];
  void tapTab(int index) {
    setState(() {
      currentIndex = index;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => pagesList[currentIndex]),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: 0,
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
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Instagram",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    fontFamily: 'Grandista',
                    color: Colors.black),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => notifHomePage(),
                          ));
                    },
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DM(),
                          ));
                    },
                    icon: Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          )),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ziraStory(),
                        ));
                  },
                  child: storyGrid(
                      image: 'assets/images/ppzira.jpg',
                      username: 'Your story')),

SizedBox(width: 20,)
                      ,
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => openOthersStory(
                            profilePic: 'assets/images/pp.jpg',
                            username: 'lavientrop',
                            storyPic: 'https://rb.gy/mdt0g',
                            timelapse: '6h'),
                      ));
                },
                child: storyGrid(
                    image: 'assets/images/pp.jpg', username: 'lavientrop'),
              )
            ],
          ),
          homePost(profileImage:'assets/images/pp.jpg' , postImage: 'https://tinyurl.com/y49r252a', likecount: 70, userName: 'lavientrop', caption: 'Baking day ❤️', datePosted: '2 hours ago'),
          homePost(profileImage: 'assets/images/pp3.jpg', postImage: 'https://tinyurl.com/mh9tvuuf', likecount: 95, userName: 'marxci', caption: 'Watch me race tomorrow!', datePosted: '9 hours ago'),
          homePost(profileImage: 'assets/images/pp2.jpg', postImage: 'https://tinyurl.com/yaf6ujt3', likecount: 83, userName: 'diterpene_glycosides', caption: "Hop in, let's play 🎮", datePosted: '21 hours ago')
        ],
      ),
    );
  }
}
