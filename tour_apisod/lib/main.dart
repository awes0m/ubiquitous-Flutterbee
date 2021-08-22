import 'package:flutter/material.dart';
import 'package:tour_apisod/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Godlymeals',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        // canvasColor: Color.alphaBlend(
        //   Colors.white,
        //   Colors.amber,
        // ),
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            headline6: TextStyle(fontSize: 24, fontFamily: 'RobotoCondensed')),
      ),
      home: CategoriesScreen(),
    );
  }
}
