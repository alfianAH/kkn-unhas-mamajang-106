import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/detail/news_detail_content.dart';

class NewsDetailScreenMobile extends StatelessWidget{
  final NewsData newsData;

  NewsDetailScreenMobile({
    required this.newsData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      child: NewsDetailContent(
        newsData: newsData,
      ),
    );
  }
}