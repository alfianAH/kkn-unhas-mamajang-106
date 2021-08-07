import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/poster/poster_model.dart';
import 'package:kkn_unhas_mamajang_106/ui/posters/detail/poster_detail_screen.dart';
import 'package:kkn_unhas_mamajang_106/utils/image_asset_loader.dart';

class PosterItem extends StatelessWidget{
  final PosterData posterData;

  PosterItem({
    required this.posterData
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      width: 200,
      padding: const EdgeInsets.only(right: 8),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return PosterDetailScreen(
                posterData: posterData
              );
            })
          );
        },

        child: Card(
          elevation: 0,
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              // Poster image
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ImageAssetLoader(
                    imagePath: posterData.image ?? '',
                    boxFit: BoxFit.cover,
                  )
                ),
              ),

              // Poster title
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    posterData.title ?? '',
                    style: textTheme.headline5,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              )
            ]
          ),
        ),
      )
    );
  }
}