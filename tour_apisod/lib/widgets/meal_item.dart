import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  void selectMeal() {}

  const MealItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: selectMeal,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 4,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[Stack()],
          ),
        ));
  }
}
