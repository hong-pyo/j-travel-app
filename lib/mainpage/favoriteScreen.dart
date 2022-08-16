import 'package:flutter/material.dart';


// 4번 navigation home
class FavoriteScreen extends StatefulWidget {

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("hello favorite"),
    );
  }
}
