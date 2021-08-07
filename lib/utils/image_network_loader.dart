import 'package:flutter/material.dart';

class ImageNetworkLoader extends StatelessWidget{
  final imagePath;
  final BoxFit? boxFit;

  ImageNetworkLoader({
    required this.imagePath,
    this.boxFit
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Image.network(
      imagePath.runtimeType == String
          ? imagePath : imagePath['small'],

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