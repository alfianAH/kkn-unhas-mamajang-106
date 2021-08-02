import 'package:flutter/material.dart';

/// [NewsScreen] is for news providers and news list
class NewsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Berita',
              style: textTheme.headline1,
            ),

            Divider(
              color: textTheme.headline1!.color,
              thickness: 2,
            ),

            SizedBox(height: 8,),

            // News Provider List
          ],
        )
      )
    );
  }
}