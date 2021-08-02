import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/list/provider/news_provider_list.dart';

/// [NewsScreen] is for news providers and news list
class NewsScreen extends StatelessWidget{
  final newsProviderNameList = ['CNN News', 'CNBC News', 'Okezone News', 'Tribun News'];

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

            // News Provider List
            NewsProviderList(
              newsProviderNameList: newsProviderNameList,
            ),
          ],
        )
      )
    );
  }
}