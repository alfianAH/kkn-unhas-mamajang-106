import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/list/news/news_item_grid_mode.dart';

class NewsListGridMode extends StatefulWidget{
  final NewsProviderDetailResponse newsProviderDetailResponse;

  NewsListGridMode({
    required this.newsProviderDetailResponse,
  });

  @override
  _NewsListGridModeState createState() => _NewsListGridModeState();
}

class _NewsListGridModeState extends State<NewsListGridMode> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      height: 275,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index){
          return NewsItemGridMode(
            newsData: widget.newsProviderDetailResponse.data![index],
          );
        }
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}