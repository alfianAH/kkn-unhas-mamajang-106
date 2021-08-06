import 'package:flutter/material.dart';

class ResponsiveDetailContentMobile extends StatelessWidget{
  final Widget detailContent;

  ResponsiveDetailContentMobile({
    required this.detailContent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      child: detailContent,
    );
  }
}