import 'package:flutter/material.dart';
import 'package:insta_mockup/widgets/homeBottomSheet.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 10),
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
                          SizedBox(width: 5,),
                  Text(widget.userName)
                ],
              ),
              IconButton(
                  onPressed: () {
                   
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => SizedBox(
                          height: 400,
                          child: homeBottomSheet(),
                        ),
                      );
                    
                  },
                  icon: const Icon(Icons.more_vert_outlined))
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.postImage),
                      fit: BoxFit.cover)),
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
                      },
                      icon: _isLiked
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : const Icon(Icons.favorite_border)),
                  const Icon(Icons.mode_comment_outlined),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.share)
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.bookmark_border),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "$_totalLikes Likes",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  widget.userName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Flexible(child: Text(' ${widget.caption} '))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              widget.datePosted,
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
