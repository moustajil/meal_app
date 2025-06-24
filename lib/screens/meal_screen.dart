import 'package:flutter/material.dart';
import 'package:mealapp/models/meai.dart';
import 'package:mealapp/screens/meal_deteal_screen.dart';
import 'package:mealapp/widget/meal_item.dart';

// ignore: must_be_immutable
class MealScreen extends StatelessWidget {
  MealScreen({super.key, required this.title, required this.meals});

  String title;
  final List<Meal> meals;

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (ctx) => MealDetealScreen(meal: meal)));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx, index) =>
          MealItem(meal: meals[index], onSelectMeal: (Meal meal) {
            selectMeal(context, meal);
          }),
    );
    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Uh oh ... nothing here !'),
            SizedBox(height: 16),
            Text('Try Selecting a nother catgory!'),
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: content,
    );
  }
}
