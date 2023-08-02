import 'package:flutter/material.dart';
import 'homePage.dart';
import 'searchPage.dart';
import 'uploadPage.dart';
import 'reelsPage.dart';
import 'profilePage.dart';

class searchPage extends StatefulWidget {
  const searchPage({Key? key}) : super(key: key);

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  int currentIndex = 1;
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
      Navigator.push(
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
          currentIndex: 1,
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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 30,
              child: TextField(
                maxLines: 1,
                textInputAction: TextInputAction.done,
                autocorrect: false,
                decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ),
          (picGrid()),
        ],
      ),
    );
  }
}

class picGrid extends StatelessWidget {
    const picGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
         height: MediaQuery.of(context).size.height ,
      child: GridView.builder(
        itemCount: 60,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 5,crossAxisSpacing: 5),
        itemBuilder: (context, index) {
          return GridTile(
              child: Container(
            decoration: BoxDecoration(
               color: Colors.grey[400],
                image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/200?random=$index'))),
          ));
        },
      ),
    );
  }
}
