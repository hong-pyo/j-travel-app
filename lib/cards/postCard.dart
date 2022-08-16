import 'dart:math';

import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  int number;

  @override
  _PostCardState createState() => _PostCardState();

  PostCard({this.number});
}

class _PostCardState extends State<PostCard> {
  List<String> testImageList = [
    "https://cdn.pixabay.com/photo/2022/07/29/18/11/city-7352352_1280.jpg",
    "https://picsum.photos/id/421/200/200",
    "https://cdn.pixabay.com/photo/2022/06/27/14/38/cat-7287671_1280.jpg",
    "https://cdn.pixabay.com/photo/2022/06/09/04/53/ride-7251713_1280.png",
    "https://cdn.pixabay.com/photo/2022/08/02/01/12/airplane-7359232_1280.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2022/06/27/14/38/cat-7287671_1280.jpg"), // profile image 받아오는곳.
                    ),
                    SizedBox(width: 5,),
                    Text("Ted")
                  ],
                ),
                Icon(Icons.subject)
              ],
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Center(child: Image.network(testImageList[Random().nextInt(5)]),),
          ),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite),
                    SizedBox(width: 7,),
                    Icon(Icons.chat_outlined),
                    SizedBox(width: 7,),
                    Icon(Icons.send),
                    SizedBox(width: 7,)
                  ],
                ),
                Container(width: 60, child: Text("test section"),),
                Icon(Icons.bookmark_border)
              ],
            )
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            child: Center(child: Text("좋아요"),),
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            child: Center(child: Text("포스트 설명"),),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Center(child: Text("댓글"),),
          )
        ],
      )
    );
  }
}
