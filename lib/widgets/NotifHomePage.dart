import 'package:flutter/material.dart';

import '../pages/homePage.dart';
import '../pages/searchPage.dart';
import '../pages/uploadPage.dart';
import '../pages/reelsPage.dart';
import '../pages/profilePage.dart';

class notifHomePage extends StatefulWidget {
  notifHomePage({super.key});

  @override
  State<notifHomePage> createState() => _notifHomePageState();
}

class _notifHomePageState extends State<notifHomePage> {
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
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => pagesList[currentIndex]),
          (route) =>
              route.isFirst || route.settings.name == '/screen_below_home');
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
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Yesterday",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          
        ],
      ),
    );
  }
}

class notifObject extends StatelessWidget {
  const notifObject({
    required this.profileImage,
    required this.username,
    super.key});

  final String profileImage;
  final String username;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(60),
                          image: DecorationImage(
                            image: AssetImage(profileImage),
                            fit: BoxFit.cover,
                          ))),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(username)
                ],
              )
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200], elevation: 0),
              child: Container(
                  width: 100,
                  height: 25,
                  child: Center(
                      child: Text(
                    "Follow back",
                    style: TextStyle(color: Colors.black),
                  )))),
        ],
      ),
    );
  }
}
