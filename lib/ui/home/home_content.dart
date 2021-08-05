import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/home/posters/poster_list.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';

/// [HomeContent] is for poster list
class HomeContent extends StatefulWidget{
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      controller: _scrollController,
      child: Container(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'KKN Unhas Mamajang 106',
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
            PosterList(
              posterCategory: 'covid-19',
            ),

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
            PosterList(
              posterCategory: 'umkm'
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}