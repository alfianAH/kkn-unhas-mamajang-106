import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/home/mobile/home_screen_mobile.dart';
import 'package:kkn_unhas_mamajang_106/ui/home/home_content.dart';
import 'package:kkn_unhas_mamajang_106/ui/home/web/home_screen_web.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/news_screen.dart';
import 'package:kkn_unhas_mamajang_106/ui/settings/settings_screen.dart';

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

    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth <= 500){
          return HomeScreenMobile(
            screens: screens,
            currentIndex: _currentIndex,
            updateIndex: _updateIndex,
          );
        } else{
          return HomeScreenWeb(
            screens: screens,
            currentIndex: _currentIndex,
            updateIndex: _updateIndex,
          );
        }
      },
    );
  }
}