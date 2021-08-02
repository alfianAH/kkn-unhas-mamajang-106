import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/list/news/news_list.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';

class NewsProviderItem extends StatelessWidget{
  final String newsProviderName;

  NewsProviderItem({
    required this.newsProviderName
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      child: Column(
        children: [
          Row(
            // News Provider title
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                newsProviderName,
                style: textTheme.headline2,
              ),

              RichText(
                text: TextSpan(
                  text: 'More',
                  style: textTheme.headline3!.copyWith(
                    inherit: true,
                    color: AppColors.link
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = (){

                    }
                )
              )
            ],
          ),

          // News List
          NewsList(),
        ],
      ),
    );
  }
}