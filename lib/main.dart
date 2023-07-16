import 'package:flutter/material.dart';
import 'package:insta_mockup/pages/profilePage.dart';
//
void main() {
  runApp(instaApp());
}

class instaApp extends StatelessWidget {
  const instaApp({super.key});

  @override
  Widget build (BuildContext context) {
    return const  MaterialApp(
      home: profilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
