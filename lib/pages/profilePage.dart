import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(
              Icons.lock,
              color: Colors.black,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              "Ziraaa_",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 2,
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              )),
        ],
      ),
    
    );
  }
}
