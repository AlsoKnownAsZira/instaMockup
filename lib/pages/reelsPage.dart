import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'homePage.dart';
import 'searchPage.dart';
import 'uploadPage.dart';
import 'profilePage.dart';

class reelsPage extends StatefulWidget {
  @override
  State<reelsPage> createState() => _reelsPageState();
}

class _reelsPageState extends State<reelsPage> {
  final _controller = PageController();
  int currentIndex = 3;
  final List<Widget> pagesList = [
    homePage(),
    searchPage(),
    uploadPage(),
    reelsPage(),
    profilePage(),
  ];
  void tapTab(int index) {
    setState(() {
      currentIndex = index;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => pagesList[currentIndex]),
      );
    });
  }

  final List<String> videoAsset = [
    'assets/videos/vid1.mp4',
    'assets/videos/vid2.mp4'
  ];
  List<Widget> _generateVideoChildren() {
    List<Widget> videoChildren = [];
    for (var path in videoAsset) {
      final videoPlayerController = VideoPlayerController.asset(path);
      final videoPlayer = VideoPlayer(videoPlayerController);
      videoPlayerController.initialize().then((_) {
        videoPlayerController.play();
      });

      final aspectRatioVideo = AspectRatio(
        aspectRatio: videoPlayerController.value.aspectRatio,
        child: Container(
          color: Colors.grey[400],
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: videoPlayer,
        ),
      );

      videoChildren.add(aspectRatioVideo);
    }
    return videoChildren;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: 3,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: tapTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Plus',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: 'Reels',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: _generateVideoChildren(),
      ),
    );
  }
}
