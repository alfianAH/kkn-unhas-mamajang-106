import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/list/provider/news_provider_item.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/news/news_provider.dart';

class NewsProviderList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: newsProviders.length,
        itemBuilder: (BuildContext context, int index){
          return NewsProviderItem(
            newsProvider: newsProviders[index]
          );
        }
      ),
    );
  }
}