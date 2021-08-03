import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/list/provider/news_provider_item.dart';

class NewsProviderList extends StatelessWidget{
  final Map<String, String> newsProviderNameMap;

  NewsProviderList({
    required this.newsProviderNameMap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: newsProviderNameMap.length,
        itemBuilder: (BuildContext context, int index){
          return NewsProviderItem(
            newsProviderName: newsProviderNameMap.keys.toList()[index],
            newsProviderLinkName: newsProviderNameMap.values.toList()[index],
          );
        }
      ),
    );
  }
}