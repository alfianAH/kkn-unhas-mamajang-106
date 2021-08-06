import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';

class HomeScreenWeb extends StatelessWidget{
  final List screens;
  final int currentIndex;
  final Function(int) updateIndex;

  HomeScreenWeb({
    required this.screens,
    required this.currentIndex,
    required this.updateIndex,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      // Body
      body: Row(
        children: [
          // Side navigation bar
          NavigationRail(
            backgroundColor: AppColors.primaryColor,
            selectedIndex: currentIndex,
            onDestinationSelected: updateIndex,
            labelType: NavigationRailLabelType.all,
            selectedLabelTextStyle: textTheme.caption,
            unselectedLabelTextStyle: textTheme.caption?.copyWith(
              color: Colors.white60
            ),
            destinations: [
              // Home
              NavigationRailDestination(
                icon: Icon(
                  Icons.home_rounded,
                  color: Colors.white,
                ),
                label: Text('Beranda'),
              ),

              // News
              NavigationRailDestination(
                icon: Icon(
                  Icons.article_rounded,
                  color: Colors.white,
                ),
                label: Text('Berita'),
              ),

              // Settings
              NavigationRailDestination(
                icon: Icon(
                  Icons.settings_rounded,
                  color: Colors.white,
                ),
                label: Text('Pengaturan'),
              ),
            ],
          ),

          SizedBox(width: 16,),

          screens[currentIndex]
        ]
      ),
    );
  }
}