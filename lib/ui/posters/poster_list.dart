import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/model/poster/poster_model.dart';
import 'package:kkn_unhas_mamajang_106/service/poster/poster_provider_service.dart';
import 'package:kkn_unhas_mamajang_106/ui/posters/poster_item.dart';
import 'package:provider/provider.dart';

class PosterList extends StatefulWidget{
  final String posterCategory;

  PosterList({
    required this.posterCategory,
  });

  @override
  _PosterListState createState() => _PosterListState();
}

class _PosterListState extends State<PosterList> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return FutureBuilder<Response<PosterModel>>(
      future: Provider.of<PosterProviderService>(context)
          .getPosters(widget.posterCategory),

      builder: (context, snapshot) {
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
          final posterModel = snapshot.requireData.body;

          // If news detail is null, ...
          if(posterModel == null){
            return Container(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                'Tidak ada hasil',
                style: textTheme.bodyText1,
              ),
            );
          }

          // If there are responses, ...
          if(posterModel.total! > 0){
            // Show news list
            return Scrollbar(
              controller: _scrollController,
              isAlwaysShown: true,
              child: Container(
                padding: const EdgeInsets.only(top: 8),
                height: 300,
                child: ListView.builder(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: posterModel.total,
                  itemBuilder: (context, index){
                    return PosterItem(
                      posterData: posterModel.data![index],
                    );
                  }
                ),
              )
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

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}