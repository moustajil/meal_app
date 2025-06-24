
import 'package:flutter/material.dart';
import 'package:mealapp/screens/categories_screens.dart';
import 'package:mealapp/screens/tabs_screen.dart';


final thene = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 90, 26, 21),brightness: Brightness.dark),
);
void main() {
  runApp(StartApp());
}

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: thene,
      home: TabsScreen(),
    );
  }
}