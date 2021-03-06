import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/poster/poster_model.dart';
import 'package:kkn_unhas_mamajang_106/ui/posters/detail/poster_detail_content.dart';

class PosterDetailScreenMobile extends StatelessWidget{
  final PosterData posterData;

  PosterDetailScreenMobile({
    required this.posterData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      child: PosterDetailContent(
        posterData: posterData,
      ),
    );
  }
}