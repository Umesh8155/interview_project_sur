import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../HomeScreen/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex=0;
  List _screens=[HomeScreen(),HomeScreen(),HomeScreen(),HomeScreen(),HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: bottomBar(),
    );
  }

  Widget bottomBar(){
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (value){
        setState(() {
          _currentIndex = value;
        });
      },
      selectedItemColor: Colors.blue[700],
      selectedFontSize: 13,
      unselectedFontSize: 13,
      iconSize: 24,
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Search",
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          label: "Shortlisted",
          icon: Icon(Icons.favorite_border_outlined),
        ),
        BottomNavigationBarItem(
          label: "Services",
          icon: Icon(Icons.headset_mic_outlined),
        ),
        BottomNavigationBarItem(
          label: "More",
          icon: Icon(Icons.account_circle_outlined),
        ),
      ],
    );
  }
}
