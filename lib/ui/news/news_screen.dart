import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      child: Text(
        'News',
        style: textTheme.headline1,
      ),
    );
  }
}