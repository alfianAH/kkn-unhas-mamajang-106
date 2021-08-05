import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/poster/poster_model.dart';

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
                  child: Image.asset(
                    posterData.image ?? '',
                    fit: BoxFit.cover,
                    errorBuilder: (context, exception, stackTrace){
                      return Icon(
                        Icons.broken_image,
                        color: textTheme.headline1!.color,
                        size: 75,
                      );
                    },
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