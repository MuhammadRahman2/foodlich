import 'package:flutter/material.dart';
import 'package:foodlich/foodlish_themes.dart';

class Card1 extends StatefulWidget {
  const Card1({ Key? key }) : super(key: key);

  @override
  _Card1State createState() => _Card1State();
}

class _Card1State extends State<Card1> {

  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the Perfect bread';
  final String chef = 'Ray WenderLich';


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Text(category,
            style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Positioned(child: Text(title,
            style: FooderlichTheme.darkTextTheme.headline2
            ),
            top: 20,
            ),
            Positioned(child: Text(description,
            style: FooderlichTheme.darkTextTheme.bodyText1
            ),
            bottom: 30,
            right: 0,
            ),
            Positioned(child: Text(chef,
            style: FooderlichTheme.darkTextTheme.bodyText1 ,
            ),
            bottom: 10,
            right: 0,
            ),
            
          ],
        ),
        padding:const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mag1.png'),
            fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0)
            )
        ),
        
      ),
    );
  }
}