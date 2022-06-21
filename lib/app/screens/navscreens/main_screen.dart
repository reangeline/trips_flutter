import 'package:flutter/material.dart';
import 'package:trips/app/screens/navscreens/bar_item_screen.dart';
import 'package:trips/app/screens/home_screen.dart';
import 'package:trips/app/screens/navscreens/my_screen.dart';
import 'package:trips/app/screens/navscreens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List screens = [HomeScreen(), BarItemScreen(), SearchScreen(), MyScreen()];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.apps)),
            BottomNavigationBarItem(
                label: 'Home', icon: Icon(Icons.bar_chart_sharp)),
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.person)),
          ]),
    );
  }
}
