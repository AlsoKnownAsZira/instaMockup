import 'package:flutter/material.dart';
import '../widgets/bottomSheetPost.dart';
class postDetail extends StatefulWidget {
  const postDetail(
      {required this.imageList,
      required this.selectedIndex,
      required this.imageCapt,
      required this.likeCount,
      super.key});
  final List<String> imageList;
  final int selectedIndex;
  final List<String> imageCapt;
  final List<int> likeCount;

  @override
  State<postDetail> createState() => _postDetailState();
}

class _postDetailState extends State<postDetail> {
// change like count
  bool _isLiked = false;
  int _totalLikes = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // using a widget widget.(name)
    _totalLikes = widget.likeCount[widget.selectedIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Colors.white),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: (Colors.black),
            )),
        title: const Text("Posts"),
        foregroundColor: Colors.black,
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(60),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/ppzira.jpg"),
                              fit: BoxFit.cover,
                            ))),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("Ziraaa_")
                  ],
                ),
                IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => SizedBox(
                          height: 500,
                          child: bottomSheetPost(),
                        ),
                      );
                    },
                    icon: Icon(Icons.more_vert_rounded))
              ],
            ),
          ),
          GestureDetector(
            onDoubleTap: () {
               
                          setState(() {
                            // changing like to true
                            _isLiked = !_isLiked;
                            if (_isLiked) {
                              _totalLikes++;
                            } else {
                              _totalLikes--;
                            }
                          });
            },
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage(widget.imageList[widget.selectedIndex]),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            // changing like to true
                            _isLiked = !_isLiked;
                            if (_isLiked) {
                              _totalLikes++;
                            } else {
                              _totalLikes--;
                            }
                          });
                        },
                        // changing color
                        icon: _isLiked
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : const Icon(Icons.favorite_border)),
                    const Icon(Icons.mode_comment_outlined),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.share),
                  ],
                ),
                const Icon(Icons.bookmark_border),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text('liked by '),
                Text(
                  'lavientrop_ ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('and '),
                Text('$_totalLikes others',
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  'Ziraaa_   ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(widget.imageCapt[widget.selectedIndex])
              ],
            ),
          ),
        ],
      ),
    );
  }
}

