import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';

class SettingsScreen extends StatefulWidget{
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pengaturan',
            style: textTheme.headline1,
          ),

          Divider(
            color: textTheme.headline1!.color,
            thickness: 2,
          ),

          SizedBox(height: 8,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Dark mode',
                style: textTheme.headline4,
              ),

              FlutterSwitch(
                value: isDarkMode,
                height: 30,
                width: 60,
                activeColor: AppColors.fontDark,
                activeToggleColor: AppColors.bodyLight,
                activeIcon: Icon(
                  Icons.dark_mode_rounded,
                  color: AppColors.fontDark,
                ),

                inactiveColor: AppColors.bodyLight,
                inactiveToggleColor: AppColors.fontDark,
                inactiveIcon: Icon(
                  Icons.light_mode_rounded,
                  color: AppColors.fontLight,
                ),
                onToggle: (value){
                  setState(() {
                    isDarkMode = value;
                  });
                }
              ),
            ],
          ),
        ],
      ),
    );
  }
}