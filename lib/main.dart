
import 'package:flutter/material.dart';


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
      home: Scaffold(),
    );
  }
}