import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/detail/news_detail_screen.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';
import 'package:kkn_unhas_mamajang_106/utils/date_converter.dart';
import 'package:kkn_unhas_mamajang_106/utils/image_network_loader.dart';

class NewsItemListMode extends StatelessWidget{
  final NewsData newsData;
  final String _dateFormat = 'EEEE, dd-MM-yy, HH:mm';

  NewsItemListMode({
    required this.newsData,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.only(top: 8),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context){
              return NewsDetailScreen(
                newsData: newsData
              );
            })
          );
        },
        child: Card(
          color: AppColors.card,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // News image
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)
                  ),
                  child: Container(
                    width: 140,
                    height: 140,
                    child: ImageNetworkLoader(
                      imagePath: newsData.image,
                      boxFit: BoxFit.fitHeight,
                    ),
                  )
                )
              ),

              SizedBox(width: 8,),

              // News description
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // News title
                      Text(
                        newsData.title ?? '',
                        style: textTheme.headline6,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),

                      // News date
                      Text(
                        DateConverter.convertDate(newsData.isoDate ?? '', _dateFormat),
                        style: textTheme.subtitle2,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),

                      // News content
                      Text(
                        newsData.contentSnippet ?? 'Klik untuk melihat detail',
                        style: textTheme.bodyText2,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}