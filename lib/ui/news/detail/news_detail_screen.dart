import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';
import 'package:kkn_unhas_mamajang_106/utils/date_converter.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailScreen extends StatelessWidget{
  final NewsData newsData;

  NewsDetailScreen({
    required this.newsData,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(18),
        child: Column(
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

            // News title
            Text(
              newsData.title ?? '',
              style: textTheme.headline2,
            ),

            SizedBox(height: 8,),

            // News date
            Text(
              '${DateConverter.convertDate(newsData.isoDate.toString())}',
              style: textTheme.subtitle1
            ),

            SizedBox(height: 16,),

            // News image
            Image.network(
              newsData.image.runtimeType == String
                  ? newsData.image : newsData.image['small'],
              errorBuilder: (context, exception, stackTrace){
                return Icon(
                  Icons.broken_image,
                  color: textTheme.headline1!.color,
                  size: 75,
                );
              },
            ),

            SizedBox(height: 8,),

            SizedBox(height: 16,),

            // News content
            Text(
              newsData.contentSnippet ?? '',
              style: textTheme.bodyText1,
            ),

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
          ]
        ),
      ),
    );
  }
}