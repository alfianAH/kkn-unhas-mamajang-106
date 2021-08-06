import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';

class HomeScreenMobile extends StatelessWidget{
  final List screens;
  final int currentIndex;
  final Function(int) updateIndex;

  HomeScreenMobile({
    required this.screens,
    required this.currentIndex,
    required this.updateIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Body
      body: screens[currentIndex],
      extendBody: true,

      // Bottom NavBar
      bottomNavigationBar: CurvedNavigationBar(
        index: currentIndex,
        onTap: updateIndex,
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