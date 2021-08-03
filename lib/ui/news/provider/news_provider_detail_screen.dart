import 'package:flutter/material.dart';

class NewsProviderDetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Berita Harian',
              style: textTheme.headline1,
            ),

            Divider(
              color: textTheme.headline1!.color,
              thickness: 2,
            ),

            SizedBox(height: 8,),

            // News Category

            // News List

          ]
        ),
      ),
    );
  }
}