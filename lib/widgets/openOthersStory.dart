import 'package:flutter/material.dart';
import 'dart:async';

class openOthersStory extends StatelessWidget {
  const openOthersStory(
      {required this.profilePic,
      required this.username,
      required this.storyPic,
      required this.timelapse,
      super.key});

  final String profilePic;
  final String username;
  final String storyPic;
  final String timelapse;

  @override
  Widget build(BuildContext context) {
    void closeStory() {
      Timer(Duration(seconds: 5), () {
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
        }
      });
    }

    closeStory();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage(profilePic),
                    fit: BoxFit.cover,
                  ))),
        ),
        title: Text('$username   $timelapse'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Center(
            child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(storyPic), fit: BoxFit.fill)),
            )
          ],
        )),
      ),
    );
  }
}
