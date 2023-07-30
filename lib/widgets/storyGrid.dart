import 'package:flutter/material.dart';

class storyGrid extends StatelessWidget {
  const storyGrid({
    required this.image,
    required this.username,
    super.key});

  final String image;
  final String username;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                // pfp
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      gradient: LinearGradient(colors: const [
                        Colors.orange,
                        Colors.red,
                        Colors.purple
                      ])),
                ),
                Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ))),
              ],
            ),
            SizedBox(height: 4,),
            Text(username)
          ],
        )
      ],
    );
  }
}
