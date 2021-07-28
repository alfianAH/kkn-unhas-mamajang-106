import 'package:flutter/material.dart';

class PosterItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      width: 250,
      padding: const EdgeInsets.only(right: 8),
      child: InkWell(
        onTap: (){},

        child: Card(
          elevation: 0,
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              // Poster image
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://s.yimg.com/ny/api/res/1.2/uW49R_K.JqErV0iPwZIheA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTIwMDA7aD0xMjgx/https://s.yimg.com/os/creatr-uploaded-images/2021-07/9d249360-efae-11eb-9347-56aa82530c42',
                    fit: BoxFit.cover,
                  )
                ),
              ),

              SizedBox(height: 8,),

              // Poster title
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: textTheme.headline5,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              )
            ]
          ),
        ),
      )
    );
  }
}