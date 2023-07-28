import 'package:flutter/material.dart';
import 'searchPage.dart';
import 'uploadPage.dart';
import 'reelsPage.dart';
import 'profilePage.dart';

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
  automaticallyImplyLeading: false,
  backgroundColor: Colors.white,
  elevation: 0,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Instagram",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,fontFamily: 'Grandista',color: Colors.black),),
      Row(
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined,color: Colors.black,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline,color: Colors.black,),),

        ],
      )

    ],
  )
),
    );
  }
}
