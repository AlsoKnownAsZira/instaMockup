import 'package:flutter/material.dart';

class reelsPage extends StatelessWidget {
  final _controller = PageController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller, 
        scrollDirection: Axis.vertical,
        children: [],
      ),
    );
  }
}
