import 'package:flutter/material.dart';

import '../data/dummy_data.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routename = "/category-meals";
  // late final String categoryID;
  // late final String categoryTitle;

  // CategoryMealScreen(this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        // ignore: cast_nullable_to_non_nullable
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryID = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryID);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text((categoryTitle).toString()),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(
            categoryMeals[index].title,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
