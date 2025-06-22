import 'package:flutter/material.dart';
import 'package:mealapp/models/categorie.dart';

// ignore: must_be_immutable
class CategorieGrid extends StatelessWidget {
  Category categorie;
  final void Function() onSelectedGategory;
  CategorieGrid({super.key,required this.categorie,required this.onSelectedGategory});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onSelectedGategory();
      },
      splashColor: Colors.white54,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          gradient: LinearGradient(colors: [
            categorie.color.withOpacity(0.55),
            categorie.color.withOpacity(0.9),
          ],begin:Alignment.topLeft,end: Alignment.bottomRight
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(categorie.title,style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}