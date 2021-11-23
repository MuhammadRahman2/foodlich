import 'package:flutter/material.dart';
import 'package:foodlich/card1.dart';
import 'package:foodlich/foodlish_themes.dart';
import 'package:foodlich/home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // 2
    final theme = FooderlichTheme.dark();

    return MaterialApp(
        // 3
        theme: theme,
        title: 'Fooderlich',
        home:const Home());
  }
}

