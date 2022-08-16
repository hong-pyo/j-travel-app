
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j_travel_app/mainpage/favoriteScreen.dart';
import 'package:j_travel_app/mainpage/homeScreen.dart';
import 'package:j_travel_app/mainpage/postScreen.dart';
import 'package:j_travel_app/mainpage/searchScreen.dart';
import 'package:j_travel_app/mainpage/settingScreen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();

}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
        label: '1번',
        icon: Icon(Icons.home)),
    BottomNavigationBarItem(
        label: '2번',
        icon: Icon(Icons.search)),
    BottomNavigationBarItem(
        label: '3번',
        icon: Icon(Icons.file_upload)),
    BottomNavigationBarItem(
        label: '4번',
        icon: Icon(Icons.favorite)),
    BottomNavigationBarItem(
        label: '5번',
        icon: Icon(Icons.settings))
  ];
  List pages = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    FavoriteScreen(),
    SettingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('메인 페이지'),),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white, // bar 의 배경색
        selectedItemColor: Colors.black, // 선택된 아이템 색상
        unselectedItemColor: Colors.grey.withOpacity(.60), // 선택안된 아이템 색상
        selectedFontSize: 14, // 선택된 아이템 폰트 사이즈,
        unselectedFontSize: 10, // 선택 안된 아이템의 폰트 사이즈
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: bottomItems,
      ),
      body: pages[_selectedIndex],
    );
  }

}