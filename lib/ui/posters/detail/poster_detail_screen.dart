import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/poster/poster_model.dart';
import 'package:kkn_unhas_mamajang_106/ui/posters/detail/mobile/poster_detail_screen_mobile.dart';
import 'package:kkn_unhas_mamajang_106/ui/posters/detail/web/poster_detail_content_web.dart';

class PosterDetailScreen extends StatefulWidget{
  final PosterData posterData;

  PosterDetailScreen({
    required this.posterData,
  });

  @override
  _PosterDetailScreenState createState() => _PosterDetailScreenState();
}

class _PosterDetailScreenState extends State<PosterDetailScreen> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child:LayoutBuilder(
          builder: (context, constraints) {
            if(constraints.maxWidth < 800){
              return PosterDetailScreenMobile(posterData: widget.posterData);
            } else {
              return PosterDetailContentWeb(posterData: widget.posterData);
            }
          },
        )
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}