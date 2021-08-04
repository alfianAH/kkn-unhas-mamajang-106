// ignore: import_of_legacy_library_into_null_safe
import 'package:category_picker/category_picker.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:category_picker/category_picker_item.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';
import 'package:kkn_unhas_mamajang_106/service/news/news_provider_service.dart';
import 'package:kkn_unhas_mamajang_106/ui/news/list/news/news_list_mode.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/news/news_provider.dart';
import 'package:provider/provider.dart';

class NewsProviderDetailScreen extends StatefulWidget{
  final NewsProvider newsProvider;

  NewsProviderDetailScreen({
    required this.newsProvider
  });

  @override
  _NewsProviderDetailScreenState createState() => _NewsProviderDetailScreenState();
}

class _NewsProviderDetailScreenState extends State<NewsProviderDetailScreen> {
  String selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    widget.newsProvider.name,
                    style: textTheme.headline1,
                  )
                ],
              ),

              Divider(
                color: textTheme.headline1!.color,
                thickness: 2,
              ),

              SizedBox(height: 8,),

              // News Category
              CategoryPicker(
                itemMargin: const EdgeInsets.only(right: 8),
                itemBorderRadius: BorderRadius.circular(10),

                selectedItemColor: AppColors.categorySelected,
                selectedItemTextDarkThemeColor: AppColors.fontLight,
                selectedItemTextLightThemeColor: AppColors.fontLight,

                unselectedItemColor: AppColors.primaryColor,
                unselectedItemTextDarkThemeColor: AppColors.fontLight,
                unselectedItemTextLightThemeColor: AppColors.fontLight,

                items: widget.newsProvider.categoryMap.keys.map((categoryName) {
                  String categoryLink = widget.newsProvider.categoryMap[categoryName].toString();
                  return CategoryPickerItem(
                    value: categoryLink,
                    label: categoryName
                  );
                }).toList(),

                onValueChanged: (item){
                  // News List
                  selectedCategory = item.value;
                },
              ),

              // News list
              FutureBuilder<Response<NewsProviderDetailResponse>>(
                future: Provider.of<NewsProviderService>(context)
                    .getNewsProviderDetail(widget.newsProvider.linkName, selectedCategory),

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
                      // Show news list
                      return NewsListMode(
                        newsDataList: newsProviderDetailResponse.data!
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
              )
            ]
          ),
        ),
      )
    );
  }
}