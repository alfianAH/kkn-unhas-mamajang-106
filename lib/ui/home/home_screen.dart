import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _updateIndex(int value){
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bottom NavBar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        items: [
          // Home
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_rounded),
          ),

          // News
          BottomNavigationBarItem(
            label: 'News',
            icon: Icon(Icons.article_rounded),
          ),

          // Settings
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings_rounded),
          ),
        ],
      ),
    );
  }
}