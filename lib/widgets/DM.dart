import 'package:flutter/material.dart';

class DM extends StatelessWidget {
  const DM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Ziraaa_',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Row(
            children: [
              Icon(Icons.video_call),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.add)
            ],
          )
        ],
      ),
      body: ListView(
        scrollDirection:Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Messages",style: TextStyle(fontSize: 18),),
                Text("Requests",style: TextStyle(color: Colors.blue,fontSize: 18),)
              ],
            ),
          ),
          SizedBox(height: 10,),
          DmObject(profileImage: 'assets/images/pp.jpg', username: 'lavientrop', activeTime: 'active 29m ago'),
          SizedBox(height: 3,),
          DmObject(profileImage:'assets/images/pp2.jpg' , username: 'diterpene_glycosides' , activeTime: ' active 2h ago'),
          SizedBox(height: 3,),
          DmObject(profileImage: 'assets/images/pp3.jpg', username: 'marxci', activeTime: 'sent yesterday')
        ],
      ),
    );
  }
}

class DmObject extends StatelessWidget {
  const DmObject(
      {required this.profileImage,
      required this.username,
      required this.activeTime,
      super.key});

  final String profileImage;
  final String username;
  final String activeTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.white),
                      borderRadius: BorderRadius.circular(60),
                      image: DecorationImage(
                        image: AssetImage(profileImage),
                        fit: BoxFit.cover,
                      ))),
                      SizedBox(width: 5,),
                      Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(username),
                          SizedBox(height: 2,),
                          Text(activeTime),
                        ],
                      )
            ],
          ),
  Icon(Icons.camera_alt_outlined,color: Colors.black,),
        ],
      ),
    );
  }
}
