import 'package:flutter/material.dart';
import 'dart:async';

class nomnom extends StatelessWidget {
  const nomnom({super.key});

  @override
  Widget build(BuildContext context) {
    void closeStory() {
      Timer(Duration(seconds: 5), () {
        if (Navigator.of(context).canPop()) {
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
                    image: AssetImage('assets/images/hl1.jpg'),
                    fit: BoxFit.cover,
                  ))),
        ),
        title: Text('nomnom  21w'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Center(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height ,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
'https://rb.gy/mdt0g'                          ),
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
