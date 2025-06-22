import 'package:flutter/material.dart';
import 'package:mealapp/models/meai.dart';

// ignore: must_be_immutable
class MealScreen extends StatelessWidget {
  MealScreen({super.key, required this.title, required this.meals});

  String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx, index) => Text(meals[index].title),
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
