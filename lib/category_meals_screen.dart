import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final int categoryId;
  final String title;

  CategoryMealsScreen(
      {super.key, required this.categoryId, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: Center(
        child: Text('Recipe'),
      ),
    );
  }
}
