import 'package:flutter/material.dart';

class followMenu extends StatelessWidget {
  const followMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            'Ziraaa_',
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  text: "10 Followers",
                ),
                Tab(
                  text: '7 Following',
                )
              ]),
        ),
        body: TabBarView(children: [
          Column(
            children: [
              followerMenu(
                  Profileimage: "assets/images/pp.jpg", username: "lavientrop"),
              followerMenu(
                  username: 'diterpene_glycosides',      Profileimage: "assets/images/pp2.jpg"),
              followerMenu(
                  username: 'marxci', Profileimage: 'assets/images/pp3.jpg')
            ],
          ),
          Column(
            children: [
              followingMenu(
                  fusername: 'lavientrop', fimage: 'assets/images/pp.jpg'),
              followingMenu(
                  fusername: 'diterpene_glycosides',     fimage: 'assets/images/pp2.jpg'),
                  followingMenu(
                  fusername: 'marxci',     fimage: 'assets/images/pp3.jpg')
            ],
          )
        ]),
      ),
    );
  }
}

class followingMenu extends StatelessWidget {
  const followingMenu({
    required this.fusername,
    required this.fimage,
    super.key,
  });
  final String fusername;
  final String fimage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(60),
                          image: DecorationImage(
                            image: AssetImage(fimage),
                            fit: BoxFit.cover,
                          ))),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(fusername)
                ],
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200], elevation: 0),
              child: Container(
                  width: 100,
                  height: 25,
                  child: Center(
                      child: Text(
                    "Following",
                    style: TextStyle(color: Colors.black),
                  )))),
        ],
      ),
    );
  }
}

class followerMenu extends StatelessWidget {
  const followerMenu({
    required this.username,
    required this.Profileimage,
    super.key,
  });
  final String username;
  final String Profileimage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(60),
                          image: DecorationImage(
                            image: AssetImage(Profileimage),
                            fit: BoxFit.cover,
                          ))),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(username)
                ],
              )
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200], elevation: 0),
              child: Container(
                  width: 100,
                  height: 25,
                  child: Center(
                      child: Text(
                    "Remove",
                    style: TextStyle(color: Colors.black),
                  )))),
        ],
      ),
    );
  }
}
