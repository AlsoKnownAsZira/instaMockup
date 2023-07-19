import 'package:flutter/material.dart';

class postDetail extends StatelessWidget {
  const postDetail(
      {required this.imageList, required this.selectedIndex, required this.imageCapt, required this.likeCount, super.key});
  final List<String> imageList;
  final int selectedIndex;
  final List<String> imageCapt;
  final List<int> likeCount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Colors.white),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: (Colors.black),
            )),
        title: Text("Posts"),
        foregroundColor: Colors.black,
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            image: AssetImage("assets/images/ppzira.jpg"),
                            fit: BoxFit.cover,
                          ))
                ),
                SizedBox(width: 5,),
                Text("Ziraaa_")
                    
                ],),
                Icon(Icons.more_vert_outlined)
              ],
            ),
          ),
      
        ],
      ),
    );
  }
}
