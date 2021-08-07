import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/utils/image_asset_loader.dart';
import 'package:kkn_unhas_mamajang_106/utils/image_network_loader.dart';

class PhotoViewerScreen extends StatelessWidget{
  static const heroTag = 'imageHero';

  /// Image path
  final imagePath;

  /// Is imagePath from network
  /// If false, load image with Image.asset
  /// If true, load image with Image.network
  final bool isFromNetwork;

  PhotoViewerScreen({
    this.isFromNetwork = false,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },

        child: Center(
          child: Hero(
            tag: heroTag,
            child: isFromNetwork
                ? ImageNetworkLoader(imagePath: imagePath)
                : ImageAssetLoader(imagePath: imagePath)
          ),
        )
      ),
    );
  }
}