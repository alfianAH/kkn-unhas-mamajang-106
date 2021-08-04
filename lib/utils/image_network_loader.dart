import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';

class ImageNetworkLoader extends StatelessWidget{
  final NewsData newsData;
  final BoxFit? boxFit;

  ImageNetworkLoader({
    required this.newsData,
    this.boxFit
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Image.network(
      newsData.image.runtimeType == String
          ? newsData.image : newsData.image['small'],

      fit: boxFit,

      errorBuilder: (context, exception, stackTrace){
        return Icon(
          Icons.broken_image,
          color: textTheme.headline1!.color,
          size: 75,
        );
      },
    );
  }
}