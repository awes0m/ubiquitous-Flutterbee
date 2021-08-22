import 'package:flutter/material.dart';
import 'category_item.dart';
import 'dummy_data.dart';

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
                catdata.id,
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
