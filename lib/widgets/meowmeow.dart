import 'package:flutter/material.dart';
import 'dart:async';

class meowmeow extends StatelessWidget {
  const meowmeow({super.key});

  @override
  Widget build(BuildContext context) {
    void NextStory() {
      Timer(Duration(seconds: 30), () {
        
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => meow2(),
        ));
      });
    }

    NextStory();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage('assets/images/hl2.jpg'),
                    fit: BoxFit.cover,
                  ))),
        ),
        title: Text('meowmeow  5d'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => meow2(),
          ));
        },
        child: Center(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('https://rb.gy/g90f4'),
                      fit: BoxFit.fill),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class meow2 extends StatelessWidget {
  const meow2({super.key});

  @override
  Widget build(BuildContext context) {
    void closeStory() {
      Timer(Duration(seconds:15 ), () {
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
          Navigator.of(context).pop();
        }
      });
    }

    closeStory();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage('assets/images/hl2.jpg'),
                    fit: BoxFit.cover,
                  ))),
        ),
        title: Text('meowmeow  5d'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
          Navigator.of(context).pop();
        },
        child: Center(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('https://rb.gy/oj81p'),
                      fit: BoxFit.fill),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
