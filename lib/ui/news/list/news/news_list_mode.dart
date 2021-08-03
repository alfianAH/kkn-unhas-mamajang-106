import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/list/news/news_item_list_mode.dart';

class NewsListMode extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index){
          // Check image URL is null or not
          return NewsItemListMode(
            newsData:
          );
        },
        itemCount: 25,
      ),
    );
  }
}