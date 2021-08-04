import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/list/news/news_item_list_mode.dart';

class NewsListMode extends StatelessWidget{
  final List<NewsData> newsDataList;

  NewsListMode({
    required this.newsDataList,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index){
          // Check image URL is null or not
          return NewsItemListMode(
            newsData: newsDataList[index]
          );
        },
        itemCount: 25,
      ),
    );
  }
}