import 'package:flutter/material.dart';

class ResponsiveDetailContentWeb extends StatelessWidget{
  final Widget detailContent;

  ResponsiveDetailContentWeb({
    required this.detailContent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      child: Row(
        children: [
          Flexible(
            child: Container(),
          ),

          Flexible(
            flex: 5,
            child: detailContent,
          ),

          Flexible(
            child: Container(),
          ),
        ],
      ),
    );
  }
}