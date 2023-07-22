import 'package:flutter/material.dart';

class followMenu extends StatelessWidget {
  const followMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Text('Ziraaa_',style: TextStyle(color: Colors.black),),
        bottom: TabBar(tabs: [
          
        ]),
        ),

      ),
      
    );
  }
}