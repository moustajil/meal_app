import 'package:flutter/material.dart';
import 'package:mealapp/screens/categories_screens.dart';
import 'package:mealapp/screens/meal_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedNavigationIten = 0;
  void _selectePage(int index){
    setState(() {
      _selectedNavigationIten = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget activeScreen = CategoriesScreens();
    var activePageTitle = 'Categoris';
    if (_selectedNavigationIten == 1) {
      activeScreen = MealScreen(meals: []);
      activePageTitle = 'Favorites';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedNavigationIten,
        onTap: _selectePage,items: [
        BottomNavigationBarItem(icon: Icon(Icons.set_meal),label: 'Categories'),
        BottomNavigationBarItem(icon: Icon(Icons.star),label: 'Favorites'),
      ])
    );
  }
}