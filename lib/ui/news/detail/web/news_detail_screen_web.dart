import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';
import 'package:kkn_unhas_mamajang_106/ui/detail/responsive_detail_content_web.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/detail/news_detail_content.dart';

class NewsDetailScreenWeb extends StatelessWidget{
  final NewsData newsData;

  NewsDetailScreenWeb({
    required this.newsData,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveDetailContentWeb(
      detailContent: NewsDetailContent(
        newsData: newsData,
      )
    );
  }
}