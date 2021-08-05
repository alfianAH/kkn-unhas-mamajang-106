import 'package:flutter/material.dart';

class ImageAssetLoader extends StatelessWidget{
  final String image;
  final BoxFit? boxFit;

  ImageAssetLoader({
    required this.image,
    this.boxFit
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Image.asset(
      image,
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