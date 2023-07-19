import 'package:flutter/material.dart';

class postDetail extends StatelessWidget {
  const postDetail(
      {required this.imageList,
      required this.selectedIndex,
      required this.imageCapt,
      required this.likeCount,
      super.key});
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
        title: const Text("Posts"),
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
                            image:const DecorationImage(
                              image: AssetImage("assets/images/ppzira.jpg"),
                              fit: BoxFit.cover,
                            ))),
                 const   SizedBox(
                      width: 5,
                    ),
                    Text("Ziraaa_")
                  ],
                ),
               const Icon(Icons.more_vert_outlined)
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage(imageList[selectedIndex]),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){

                    }, icon: Icon(Icons.favorite_border)),
                  
                    Icon(Icons.mode_comment_outlined),
                      SizedBox(width: 10,),
                    Icon(Icons.share)
                  ],
                
                ),
                Icon(Icons.bookmark_border)
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}
