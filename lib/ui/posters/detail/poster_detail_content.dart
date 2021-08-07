import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/poster/poster_model.dart';
import 'package:kkn_unhas_mamajang_106/ui/photo_viewer/photo_viewer_screen.dart';
import 'package:kkn_unhas_mamajang_106/utils/date_converter.dart';
import 'package:kkn_unhas_mamajang_106/utils/image_asset_loader.dart';

class PosterDetailContent extends StatelessWidget{
  final PosterData posterData;
  final String _dateFormat = 'EEEE, dd-MM-yy';

  PosterDetailContent({
    required this.posterData,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Row(
          children: [
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: textTheme.headline1!.color,
              ),
            ),

            SizedBox(width: 8),

            Text(
              'Poster',
              style: textTheme.headline1,
            )
          ],
        ),

        Divider(
          color: textTheme.headline1!.color,
          thickness: 2,
        ),

        SizedBox(height: 8,),

        // Details content
        Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Poster title
              SelectableText(
                posterData.title ?? '',
                style: textTheme.headline2,
              ),

              SizedBox(height: 8,),

              // Poster date and author
              SelectableText(
                '${DateConverter.convertDate(posterData.isoDate.toString(), _dateFormat)} '
                    'oleh ${posterData.author}',
                style: textTheme.subtitle1
              ),

              SizedBox(height: 16,),

              // Poster image
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return PhotoViewerScreen(imagePath: posterData.image ?? '');
                    }
                  ));
                },
                child: Hero(
                  tag: PhotoViewerScreen.heroTag,
                  child: Center(
                    child: Container(
                      width: 250,
                      child: ImageAssetLoader(
                        imagePath: posterData.image ?? '',
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 16,),

              // Poster content
              SelectableText(
                posterData.contentSnippet ?? '',
                style: textTheme.bodyText1,
              ),

              SizedBox(height: 8,),
            ],
          ),
        ),
      ]
    );
  }
}