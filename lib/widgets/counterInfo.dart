import 'package:flutter/material.dart';
class counterInfo extends StatelessWidget {
  counterInfo(this.category, this.value);
  final String category;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(category,  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      )
      ],
    );
  }
}
