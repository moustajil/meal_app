import 'package:flutter/material.dart';
import 'package:mealapp/models/categorie.dart';

class CategorieGrid extends StatelessWidget {
  Categorie categorie;
  CategorieGrid({super.key,required this.categorie});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          categorie.color.withOpacity(0.55),
          categorie.color.withOpacity(0.9),
        ],begin:Alignment.topLeft,end: Alignment.bottomRight
        )
      ),
      child: Text(categorie.title,style: TextStyle(color: Colors.white),),
    );
  }
}