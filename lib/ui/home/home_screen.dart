import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/home/home_content.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/news_screen.dart';
import 'package:kkn_unhas_mamajang_106/ui/settings/settings_screen.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';

class HomeScreen extends StatefulWidget{
  final ValueNotifier<ThemeMode> notifier;
  final ThemeMode currentTheme;

  HomeScreen({
    required this.notifier,
    required this.currentTheme
  });

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
    List screens = [HomeContent(),
      NewsScreen(),
      SettingsScreen(
        notifier: widget.notifier,
        currentTheme: widget.currentTheme,
      ),
    ];

    return Scaffold(
      // Body
      body: screens[_currentIndex],
      extendBody: true,

      // Bottom NavBar
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        onTap: _updateIndex,
        height: 50,
        backgroundColor: Colors.transparent,
        color: AppColors.primaryColor,
        animationDuration: Duration(milliseconds: 200),
        items: [
          // Home
          Icon(
            Icons.home_rounded,
            color: Colors.white,
          ),

          // News
          Icon(
            Icons.article_rounded,
            color: Colors.white,
          ),

          // Settings
          Icon(
            Icons.settings_rounded,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}