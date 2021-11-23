import 'package:flutter/material.dart';
import 'package:foodlich/circle_image.dart';
import 'package:foodlich/foodlish_themes.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard({
     Key? key,
     required this.authorName,
     required this.title,
      this.imageProvider
     }) : super(key: key);

  final String?  authorName;
  final String? title;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
         padding: const EdgeInsets.only(top:16,right: 8,left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imagesRadius: 28,
              ),
             const SizedBox(width:8,),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(authorName.toString(),
                  style: FooderlichTheme.lightTextTheme.headline2,
                 ),
                 Text(title.toString(),
                 style: FooderlichTheme.lightTextTheme.headline3,
                 )
               ],
             ),
              IconButton(
                 icon:const Icon(Icons.favorite_border),
                 iconSize: 30,
                 color: Colors.grey[900],
                onPressed: (){
                  const snackBar = SnackBar(
                    content: Text('Favorite pressed')
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
               )
            ],
          ) 
        ],
      ),
    );
  }
}