import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/home/home_screen.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ValueNotifier<ThemeMode> _notifier = ValueNotifier(ThemeMode.dark);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: _notifier,
      builder: (BuildContext context, ThemeMode mode, Widget? child){
        return MaterialApp(
          title: 'KKN Unhas Mamajang G-106',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: mode,
          home: HomeScreen(
            notifier: _notifier,
            currentTheme: mode,
          ),
        );
      }
    );
  }
}
