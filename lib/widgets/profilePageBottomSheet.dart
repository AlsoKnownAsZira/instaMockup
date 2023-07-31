import 'package:flutter/material.dart';
class profilePageBottomSheet extends StatelessWidget {
  const profilePageBottomSheet({
    super.key,
  });
// ignore_for_file: prefer_const_constructors
  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        ListTile(
          leading:Icon(Icons.settings,color: Colors.black,) ,
          title: Text("Settings"),
        ),
         ListTile(
          leading:Icon(Icons.history_toggle_off_sharp,color: Colors.black,) ,
          title: Text("Your activity"),
        ),
         ListTile(
          leading:Icon(Icons.history,color: Colors.black,) ,
          title: Text("Archive"),
        ),
         ListTile(
          leading:Icon(Icons.qr_code_scanner_outlined,color: Colors.black,) ,
          title: Text("QR Code"),
        ),
         ListTile(
          leading:Icon(Icons.bookmark_border,color: Colors.black,) ,
          title: Text("Saved"),
        ),
         ListTile(
          leading:Icon(Icons.format_list_bulleted_sharp,color: Colors.black,) ,
          title: Text("Close friends"),
        ),
         ListTile(
          leading:Icon(Icons.star_border,color: Colors.black,) ,
          title: Text("Favourites"),
        ),
         ListTile(
          leading:Icon(Icons.chat_outlined,color: Colors.black,) ,
          title: Text("Update messaging"),
        )
      ],
    );
  }
}