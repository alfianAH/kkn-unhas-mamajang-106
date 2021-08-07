import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/detail/news_detail_screen.dart';
import 'package:kkn_unhas_mamajang_106/utils/image_network_loader.dart';

class NewsItemGridMode extends StatelessWidget{
  final NewsData newsData;

  NewsItemGridMode({
    required this.newsData,
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
              builder: (context){
                return NewsDetailScreen(
                    newsData: newsData
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
                    child: ImageNetworkLoader(
                      imagePath: newsData.image,
                      boxFit: BoxFit.fitHeight,
                    ),
                  ),
                ),

                // Poster title
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      newsData.title.toString(),
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