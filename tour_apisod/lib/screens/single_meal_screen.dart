import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  // ignore: file_names
  static const routename = "/meal_details";
  const MealDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: cast_nullable_to_non_nullable
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(mealId),
      ),
      body: Center(child: Text('the Meal- $mealId')),
    );
  }
}
