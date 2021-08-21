import 'package:flutter/material.dart';
import 'package:tour_apisod/category_item.dart';
import 'package:tour_apisod/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GodlyMeals"),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES
            .map(
              (catdata) => CategoryItem(
                catdata.title,
                catdata.color,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        padding: EdgeInsets.all(20),
      ),
    );
  }
}
