import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';
import 'package:kkn_unhas_mamajang_106/service/news/news_provider_service.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/list/provider/news_provider_item.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/news/news_provider.dart';
import 'package:provider/provider.dart';

class NewsProviderList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: newsProviders.length,
        itemBuilder: (BuildContext context, int index){
          return FutureBuilder<Response<NewsProviderDetailResponse>>(
            future: Provider.of<NewsProviderService>(context)
                .getNewsProviderDetail(newsProviders[index].linkName, ''),

            builder: (BuildContext context,
                AsyncSnapshot<Response<NewsProviderDetailResponse>> snapshot){

              // If connection state is done , ...
              if(snapshot.connectionState == ConnectionState.done){
                // If snapshot has error, ...
                if(snapshot.hasError){
                  return Container(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      snapshot.error.toString(),
                      style: textTheme.bodyText1,
                    ),
                  );
                }

                // Get data
                final newsProviderDetailResponse = snapshot.requireData.body;

                // If news detail is null, ...
                if(newsProviderDetailResponse == null){
                  return Container(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      'Tidak ada hasil',
                      style: textTheme.bodyText1,
                    ),
                  );
                }

                // If there are responses, ...
                if(newsProviderDetailResponse.total! > 0){
                  // Show news item
                  return NewsProviderItem(
                    newsProvider: newsProviders[index],
                    newsProviderDetailResponse: newsProviderDetailResponse,
                  );
                }

                // Return Text if there are no responses
                return Container(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'Total berita: 0',
                    style: textTheme.bodyText1,
                  ),
                );

              } else{ // Else, show loading
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }
          );
        }
      ),
    );
  }
}