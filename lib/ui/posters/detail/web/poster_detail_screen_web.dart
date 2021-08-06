import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/poster/poster_model.dart';
import 'package:kkn_unhas_mamajang_106/ui/detail/responsive_detail_content_web.dart';
import 'package:kkn_unhas_mamajang_106/ui/posters/detail/poster_detail_content.dart';

class PosterDetailScreenWeb extends StatelessWidget{
  final PosterData posterData;

  PosterDetailScreenWeb({
    required this.posterData,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveDetailContentWeb(
      detailContent: PosterDetailContent(
        posterData: posterData
      )
    );
  }
}