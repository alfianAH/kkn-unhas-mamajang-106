import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';

class NewsItem extends StatelessWidget{
  final NewsData newsData;

  NewsItem({
    required this.newsData,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    print(newsData.image);

    return Container(
        width: 200,
        padding: const EdgeInsets.only(right: 8),
        child: InkWell(
          onTap: (){},

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
                    child: new Image.network(
                      newsData.image.runtimeType == String
                          ? newsData.image : newsData.image['small'],
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(
                          Icons.broken_image_rounded,
                          color: textTheme.headline1!.color,
                          size: 75
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