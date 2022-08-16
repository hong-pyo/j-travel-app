import 'package:flutter/material.dart';
import 'package:j_travel_app/cards/postCard.dart';



// 1번 navigation home
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
            return PostCard(
              number: index,
            );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10,);
        },
      )
    );
  }
}
