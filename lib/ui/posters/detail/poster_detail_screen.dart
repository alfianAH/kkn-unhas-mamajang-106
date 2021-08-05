import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/poster/poster_model.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';
import 'package:kkn_unhas_mamajang_106/utils/date_converter.dart';
import 'package:kkn_unhas_mamajang_106/utils/image_asset_loader.dart';
import 'package:url_launcher/url_launcher.dart';

class PosterDetailScreen extends StatefulWidget{
  final PosterData posterData;

  PosterDetailScreen({
    required this.posterData,
  });

  @override
  _PosterDetailScreenState createState() => _PosterDetailScreenState();
}

class _PosterDetailScreenState extends State<PosterDetailScreen> {
  ScrollController _scrollController = ScrollController();
  final String _dateFormat = 'EEEE, dd-MM-yy';

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          padding: const EdgeInsets.all(18),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
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
                      'Poster',
                      style: textTheme.headline1,
                    )
                  ],
                ),

                Divider(
                  color: textTheme.headline1!.color,
                  thickness: 2,
                ),

                SizedBox(height: 8,),

                // Poster title
                SelectableText(
                  widget.posterData.title ?? '',
                  style: textTheme.headline2,
                ),

                SizedBox(height: 8,),

                // Poster date and author
                SelectableText(
                  '${DateConverter.convertDate(widget.posterData.isoDate.toString(), _dateFormat)} '
                      'oleh ${widget.posterData.author}',
                  style: textTheme.subtitle1
                ),

                SizedBox(height: 16,),

                // Poster image
                ImageAssetLoader(
                  image: widget.posterData.image ?? '',
                  boxFit: BoxFit.cover,
                ),

                SizedBox(height: 16,),

                // Poster content
                SelectableText(
                  widget.posterData.contentSnippet ?? '',
                  style: textTheme.bodyText1,
                ),

                SizedBox(height: 8,),

                // News link
                // RichText(
                //   text: TextSpan(
                //     text: 'Klik untuk melihat artikel asli.',
                //     style: textTheme.bodyText1!.copyWith(
                //         color: AppColors.link
                //     ),
                //     recognizer: TapGestureRecognizer()
                //       ..onTap = () {
                //         launch(widget.posterData.link.toString());
                //       }
                //   ),
                // ),
              ]
          ),
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