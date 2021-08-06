import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/detail/mobile/news_detail_screen_mobile.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/detail/web/news_detail_screen_web.dart';

class NewsDetailScreen extends StatefulWidget{
  final NewsData newsData;

  NewsDetailScreen({
    required this.newsData,
  });

  @override
  _NewsDetailScreenState createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: LayoutBuilder(
          builder: (context, constraints) {
            if(constraints.maxWidth < 800){
              return NewsDetailScreenMobile(
                newsData: widget.newsData,
              );
            } else{
              return NewsDetailScreenWeb(
                newsData: widget.newsData,
              );
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}