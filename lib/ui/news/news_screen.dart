import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/service/news/news_provider_service.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/list/provider/news_provider_list.dart';
import 'package:provider/provider.dart';

/// [NewsScreen] is for news providers and news list
class NewsScreen extends StatefulWidget{
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      controller: _scrollController,
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
            NewsProviderList(),
          ],
        )
      )
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}