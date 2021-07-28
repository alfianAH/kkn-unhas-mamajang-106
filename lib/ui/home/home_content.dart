import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/home/poster_list.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';

/// [HomeContent] is for poster list
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'KKN Mamajang 106',
              style: textTheme.headline1,
            ),

            Divider(
              color: textTheme.headline1!.color,
              thickness: 2,
            ),

            SizedBox(height: 8,),

            // Covid-19 category
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Covid-19',
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

            // Covid-19 poster list
            PosterList(),

            SizedBox(height: 8,),

            // UMKM category
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'UMKM',
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

            // UMKM poster list
            PosterList(),
          ],
        ),
      ),
    );
  }
}