import 'package:flutter/material.dart';

class bottomSheetPost extends StatelessWidget {
  const bottomSheetPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
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
          leading: Icon(Icons.history_rounded,color: Colors.black,),
          title: Text("Archive"),
        ),
         ListTile(
          leading: Icon(Icons.highlight_off_rounded,color: Colors.black,),
          title: Text("Hide like count"),
        ),
         ListTile(
          leading: Icon(Icons.hide_source,color: Colors.black,),
          title: Text("Turn off commenting"),
        ),
         ListTile(
          leading: Icon(Icons.edit,color: Colors.black,),
          title: Text("Edit"),
        ),
        ListTile(
          leading: Icon(Icons.push_pin_outlined,color: Colors.black,),
          title: Text("Pin to your profile"),
        ),
        ListTile(
          leading: Icon(Icons.share_outlined,color: Colors.black,),
          title: Text("Post to other apps..."),
        ),
         ListTile(
          leading: Icon(Icons.delete_outline,color: Colors.red,),
          title: Text("Delete",style: TextStyle(color: Colors.red),),
        ),
      ],
    );
  }
}
