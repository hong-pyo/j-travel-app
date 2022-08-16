import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:j_travel_app/mainpage.dart';

class LadingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LadingPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset("assets/image/main_test.jpeg",fit: BoxFit.cover,)
          ),
          CircularProgressIndicator()
        ]
      ),
    );
  }

  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Get.offAll(MainPage());
    });
    super.initState();
  }
}