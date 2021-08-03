// ignore: import_of_legacy_library_into_null_safe
import 'package:category_picker/category_picker.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:category_picker/category_picker_item.dart';
import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/news/news_provider.dart';

class NewsProviderDetailScreen extends StatelessWidget{
  final NewsProvider newsProvider;

  NewsProviderDetailScreen({
    required this.newsProvider
  });

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

                  Text(
                    'Berita Harian',
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

                items: newsProvider.categoryName.map((category){
                  return CategoryPickerItem(value: category);
                }).toList(),

                onValueChanged: (value){
                  // News List
                },
              ),

            ]
          ),
        ),
      )
    );
  }
}