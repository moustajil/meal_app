import 'package:flutter/material.dart';
import 'package:mealapp/models/meai.dart';

class MealDetealScreen extends StatelessWidget {
  const MealDetealScreen({super.key, required this.meal});
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Image.network(
        meal.imageUrl,
        fit: BoxFit.cover,
        width: double.infinity,
        height: 300,
      ),
    );
  }
}
