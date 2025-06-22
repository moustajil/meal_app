import 'package:flutter/material.dart';
import 'package:mealapp/data/dummy_data.dart';
import 'package:mealapp/models/categorie.dart';
import 'package:mealapp/widget/categorie_grid.dart';
import 'package:mealapp/widget/meal_screen.dart';

class CategoriesScreens extends StatelessWidget {
  const CategoriesScreens({super.key});

  void _selectGategoryScreen(BuildContext context,Category category) {
    final filterMeals = dummyMeals.where((meal) => meal.categories.contains(category.id)).toList();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealScreen(title: category.title, meals: filterMeals),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pick Your Category")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          children: [
            for (final item in availableCategories)
              CategorieGrid(
                categorie: item,
                onSelectedGategory: () {
                  _selectGategoryScreen(context,item);
                },
              ),
          ],
        ),
      ),
    );
  }
}
