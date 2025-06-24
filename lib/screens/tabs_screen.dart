import 'package:flutter/material.dart';
import 'package:mealapp/models/meai.dart';
import 'package:mealapp/screens/categories_screens.dart';
import 'package:mealapp/screens/filter_screen.dart';
import 'package:mealapp/screens/meal_screen.dart';
import 'package:mealapp/widget/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedNavigationIten = 0;
  final List<Meal> _favoriteMeal = [];

  void ShowInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  void _toggoleFavoritestatus(Meal meal) {
    final isExisten = _favoriteMeal.contains(meal);
    if (isExisten) {
      setState(() {
        _favoriteMeal.remove(meal);
      });
      ShowInfoMessage('your favorite meal is deleted !');
    } else {
      setState(() {
        _favoriteMeal.add(meal);
      });

      ShowInfoMessage('you added this meal to your favorite meal list !');
    }
  }

  void _selectePage(int index) {
    setState(() {
      _selectedNavigationIten = index;
    });
  }

  void _setScreen(String screebn) {
    if (screebn == 'filter') {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (ctx) => FilterScreen()));
    } else {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = CategoriesScreens(
      onTaggleFavorite: _toggoleFavoritestatus,
    );
    var activePageTitle = 'Categoris';
    if (_selectedNavigationIten == 1) {
      activeScreen = MealScreen(
        meals: _favoriteMeal,
        onTaggleFavorite: _toggoleFavoritestatus,
      );
      activePageTitle = 'Favorites';
    }
    return Scaffold(
      appBar: AppBar(title: Text(activePageTitle)),
      drawer: MainDrawer(onScelectionScreen: _setScreen),
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedNavigationIten,
        onTap: _selectePage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
        ],
      ),
    );
  }
}
