import 'package:flutter/material.dart';
class Highlight extends StatelessWidget {
  const Highlight({
    required this.highlight_title,
    required this.image_asset,
    super.key,
  });
  final String highlight_title;
  final String image_asset;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
            onPressed: () {
              
            },
            style: ElevatedButton.styleFrom(shape: CircleBorder()),
            child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white),
                    borderRadius: BorderRadius.circular(60),
                    image: DecorationImage(
                      image: AssetImage(image_asset),
                      fit: BoxFit.cover,
                    )))),
        const SizedBox(
          height: 5,
        ),
        Text(highlight_title)
      ],
    );
  }
}