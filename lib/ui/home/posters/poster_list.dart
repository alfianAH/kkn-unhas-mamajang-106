import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/home/posters/poster_item.dart';

class PosterList extends StatefulWidget{
  @override
  _PosterListState createState() => _PosterListState();
}

class _PosterListState extends State<PosterList> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      height: 300,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index){
          return PosterItem();
        }
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}