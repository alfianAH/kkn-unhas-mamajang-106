import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/list/news/news_item_list_mode.dart';

class NewsListMode extends StatefulWidget{
  final List<NewsData> newsDataList;

  NewsListMode({
    required this.newsDataList,
  });

  @override
  _NewsListModeState createState() => _NewsListModeState();
}

class _NewsListModeState extends State<NewsListMode> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        controller: _scrollController,
        shrinkWrap: true,
        itemBuilder: (context, index){
          // Check image URL is null or not
          return NewsItemListMode(
            newsData: widget.newsDataList[index]
          );
        },
        itemCount: 25,
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}