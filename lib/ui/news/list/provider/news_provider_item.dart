import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/list/news/news_list_grid_mode.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/provider/news_provider_detail_screen.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/news/news_provider.dart';

class NewsProviderItem extends StatelessWidget{
  final NewsProvider newsProvider;
  final NewsProviderDetailResponse newsProviderDetailResponse;

  NewsProviderItem({
    required this.newsProvider,
    required this.newsProviderDetailResponse
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // News Provider title
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                newsProvider.name,
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
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return NewsProviderDetailScreen(
                            newsProvider: newsProvider
                          );
                        })
                      );
                    }
                )
              )
            ],
          ),

          // News List
          NewsListGridMode(
            newsProviderDetailResponse: newsProviderDetailResponse,
          ),
        ],
      ),
    );
  }
}