import 'package:flutter/material.dart';
import 'package:insta_mockup/pages/homePage.dart';
import 'package:insta_mockup/pages/profilePage.dart';
import 'package:insta_mockup/pages/loginPage.dart';
import 'package:insta_mockup/widgets/postDetail.dart';

// ignore_for_file: prefer_const_constructors
void main() {
  runApp(instaApp());
}

class instaApp extends StatelessWidget {
  const instaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: loginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
