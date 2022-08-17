import 'package:flutter/material.dart';
import 'package:flutter_insta_ui/pages/add.dart';
import 'package:flutter_insta_ui/pages/favorite.dart';
import 'package:flutter_insta_ui/pages/home.dart';
import 'package:flutter_insta_ui/pages/profile.dart';
import 'package:flutter_insta_ui/pages/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List _pages = [
    HomePage(),
    SearchPage(),
    AddPage(),
    FavoritePage(),
    profilePage()
  ];
  void _navigationBottomSelect(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _navigationBottomSelect,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: 'add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: 'favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'profile'),
          ]),
    );
  }
}
