import 'package:flutter/material.dart';


// 5번 navigation home
class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("hello setting"),
    );
  }
}
