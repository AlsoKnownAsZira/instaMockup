import 'package:flutter/material.dart';

class homeBottomSheet extends StatelessWidget {
  const homeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
          Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                
                children: [
                 
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black,
                                    width: 3),
                                borderRadius:
                                    BorderRadius.circular(
                                        40)),
                          ),
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(
                                        35)),
                            child: Icon(
                              Icons.share_outlined,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Share")
                    ],
                  ),
                  SizedBox(width: 15,),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black,
                                    width: 3),
                                borderRadius:
                                    BorderRadius.circular(
                                        40)),
                          ),
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(
                                        35)),
                            child: Icon(
                              Icons.link,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Link")
                    ],
                  ),
                  SizedBox(width: 15,),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black,
                                    width: 3),
                                borderRadius:
                                    BorderRadius.circular(
                                        40)),
                          ),
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(
                                        35)),
                            child: Icon(
                              Icons.bookmark_border,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Save')
                    ],
                  ),
                  SizedBox(width: 15,),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black,
                                    width: 3),
                                borderRadius:
                                    BorderRadius.circular(
                                        40)),
                          ),
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(
                                        35)),
                            child: Icon(
                              Icons.qr_code_scanner,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("QR Code")
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        ListTile(
          leading: Icon(Icons.star_border),
          title: Text('Add to favourites'),
        ),
         ListTile(
          leading: Icon(Icons.person_remove_alt_1_outlined),
          title: Text('Unfollow'),
        ),
         ListTile(
          leading: Icon(Icons.info_outline),
          title: Text("Why you're seeing this post"),
        ),
         ListTile(
          leading: Icon(Icons.hide_image_outlined),
          title: Text('Hide'),
        ),
         ListTile(
          leading: Icon(Icons.person_pin),
          title: Text('About this account'),
        ),
         ListTile(
          leading: Icon(Icons.report_gmailerrorred_rounded,color: Colors.red,),
          title: Text('Report',style: TextStyle(color: Colors.red),),
        ),
      ],
    );
  }
}