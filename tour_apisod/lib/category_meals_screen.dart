import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  late final String categoryID;
  late final String categoryTitle;

  CategoryMealScreen(this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text("The recipies for the category"),
      ),
    );
  }
}
