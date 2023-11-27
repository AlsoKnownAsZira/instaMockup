import 'package:flutter/material.dart';

import 'homePage.dart';
import 'searchPage.dart';
import 'uploadPage.dart';
import 'profilePage.dart';
import 'reelsPage.dart';

class uploadPage extends StatefulWidget {
  @override
  State<uploadPage> createState() =>  _uploadPageState();
}

class _uploadPageState extends State<uploadPage> {
  int currentIndex = 2; // Set the initial index to 2 for 'uploadPage'
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
        ],
      ),
      body: const Center(
        child: Text('Work in progress :)'),
      ),
    );
  }
}
