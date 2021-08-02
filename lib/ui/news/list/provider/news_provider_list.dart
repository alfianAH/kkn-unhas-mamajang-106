import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/list/provider/news_provider_item.dart';

class NewsProviderList extends StatelessWidget{
  final List<String> newsProviderNameList;

  NewsProviderList({
    required this.newsProviderNameList
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: newsProviderNameList.length,
        itemBuilder: (BuildContext context, int index){
          return NewsProviderItem(
            newsProviderName: newsProviderNameList[index],
          );
        }
      ),
    );
  }
}