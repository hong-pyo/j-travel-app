import 'package:flutter/material.dart';


// 3번 navigation home
class PostScreen extends StatefulWidget {

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("hello post card"),
    );
  }
}
