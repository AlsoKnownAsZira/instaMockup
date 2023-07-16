import 'package:flutter/material.dart';
class profilePicture extends StatelessWidget {
  const profilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // pfp
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              gradient: LinearGradient(colors: [
                Colors.orange,
                Colors.red,
                Colors.purple
              ])),
        ),
        Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.white),
                borderRadius: BorderRadius.circular(60),
                image: DecorationImage(
                  image: AssetImage('assets/images/ppzira.jpg'),
                  fit: BoxFit.cover,
                )))
      ],
    );
  }
}
