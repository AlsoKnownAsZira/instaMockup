import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
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
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              gradient: LinearGradient(
                  colors: const [Colors.orange, Colors.red, Colors.purple])),
        ),
        Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(60),
                image: DecorationImage(
                  image: AssetImage('assets/images/ppzira.jpg'),
                  fit: BoxFit.cover,
                ))
                ),
      ],
    );
  }
}
