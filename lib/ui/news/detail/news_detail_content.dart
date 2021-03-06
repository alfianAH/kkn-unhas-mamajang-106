import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';
import 'package:kkn_unhas_mamajang_106/ui/photo_viewer/photo_viewer_screen.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';
import 'package:kkn_unhas_mamajang_106/utils/date_converter.dart';
import 'package:kkn_unhas_mamajang_106/utils/image_network_loader.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailContent extends StatelessWidget{
  final String _dateFormat = 'EEEE, dd-MM-yy, HH:mm';
  final NewsData newsData;

  NewsDetailContent({
    required this.newsData,
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
              'Berita',
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
              // News title
              SelectableText(
                newsData.title ?? '',
                style: textTheme.headline2,
              ),

              SizedBox(height: 8,),

              // News date
              SelectableText(
                '${DateConverter.convertDate(newsData.isoDate.toString(), _dateFormat)}',
                style: textTheme.subtitle1
              ),

              SizedBox(height: 16,),

              // News image
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return PhotoViewerScreen(
                        imagePath: newsData.image,
                        isFromNetwork: true,
                      );
                    }
                  ));
                },
                child: Hero(
                  tag: PhotoViewerScreen.heroTag,
                  child: ImageNetworkLoader(
                    imagePath: newsData.image
                  ),
                ),
              ),

              SizedBox(height: 16,),

              // News link
              RichText(
                text: TextSpan(
                  text: 'Klik untuk melihat artikel asli.',
                  style: textTheme.bodyText1!.copyWith(
                      color: AppColors.link
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(newsData.link.toString());
                    }
                ),
              ),

              SizedBox(height: 8,),

              // News content
              SelectableText(
                newsData.contentSnippet ?? '',
                style: textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ]
    );
  }
}