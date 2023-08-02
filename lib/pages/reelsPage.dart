import 'package:flutter/material.dart';
import 'homePage.dart';
import 'searchPage.dart';
import 'uploadPage.dart';
import 'profilePage.dart';

class reelsPage extends StatefulWidget {
  @override
  State<reelsPage> createState() => _reelsPageState();
}

class _reelsPageState extends State<reelsPage> {
  final _controller = PageController();
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
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => pagesList[currentIndex]),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [],
      ),
    );
  }
}
