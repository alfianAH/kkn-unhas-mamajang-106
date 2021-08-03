import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/service/news/news_provider_service.dart';
import 'package:kkn_unhas_mamajang_106/ui/home/home_screen.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/theme/app_theme.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

void main() {
  _setupLogging();
  runApp(MyApp());
}

void _setupLogging(){
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  final ValueNotifier<ThemeMode> _notifier = ValueNotifier(ThemeMode.dark);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: _notifier,
      builder: (BuildContext context, ThemeMode mode, Widget? child){
        return Provider(
          create: (_) => NewsProviderService.create(),
          dispose: (_, NewsProviderService service) => service.client.dispose(),
          child: MaterialApp(
            title: 'KKN Unhas Mamajang G-106',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: mode,
            home: HomeScreen(
              notifier: _notifier,
              currentTheme: mode,
            ),
          ),
        );
      }
    );
  }
}
