import 'package:flutter/material.dart';

class homePost extends StatefulWidget {
  const homePost(
      {required this.profileImage,
      required this.postImage,
      required this.likecount,
      required this.userName,
      required this.caption,
      required this.datePosted,
      super.key});

  final String profileImage;
  final String postImage;
  final int likecount;
  final String userName;
  final String caption;
  final String datePosted;

  @override
  State<homePost> createState() => _homePostState();
}

class _homePostState extends State<homePost> {
  bool _isLiked = false;
  int _totalLikes = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _totalLikes = widget.likecount;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(60),
                          image: DecorationImage(
                            image: AssetImage(widget.profileImage),
                            fit: BoxFit.cover,
                          ))),
                  Text(widget.userName)
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
            ],
          ),
          GestureDetector(
            onDoubleTap: () {
              setState(() {
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
              height: 300,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: NetworkImage(widget.postImage))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                          setState(() {
                _isLiked = !_isLiked;
                if (_isLiked) {
                  _totalLikes++;
                } else {
                  _totalLikes--;
                }
              });
                      }, icon: _isLiked? Icon(Icons.favorite, color: Colors.red,)
                      : Icon(Icons.favorite_border)
                      ),
                  Icon(Icons.mode_comment_outlined),
                  Icon(Icons.share)
                ],
              ),
              Icon(Icons.bookmark_border)
            ],
          ),
          Text("$_totalLikes Likes"),
          Text("${widget.userName}  ${widget.caption}"),
          Text(widget.datePosted),
        ],
      ),
    );
  }
}
