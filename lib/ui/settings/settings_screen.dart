import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget{
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
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
        ],
      ),
    );
  }
}