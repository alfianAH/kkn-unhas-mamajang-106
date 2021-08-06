import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/poster/poster_model.dart';
import 'package:kkn_unhas_mamajang_106/ui/detail/responsive_detail_content_web.dart';
import 'package:kkn_unhas_mamajang_106/utils/date_converter.dart';
import 'package:kkn_unhas_mamajang_106/utils/image_asset_loader.dart';

class PosterDetailContentWeb extends StatelessWidget{
  final PosterData posterData;
  final String _dateFormat = 'EEEE, dd-MM-yy';

  PosterDetailContentWeb({
    required this.posterData,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return ResponsiveDetailContentWeb(
      detailContent: Column(
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
                'Poster ${MediaQuery.of(context).size.width}',
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
                Center(
                  child: Container(
                    width: 250,
                    child: ImageAssetLoader(
                      image: posterData.image ?? '',
                      boxFit: BoxFit.cover,
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
      )
    );
  }
}