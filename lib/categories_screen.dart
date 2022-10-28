import 'package:flutter/material.dart';
import 'package:meal_app/db/dummy_data.dart';
import 'category_item.dart';
import './models/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
        ),
        children: dataCategories
            .map((e) => CategoryItem(title: e.title, color: e.color))
            .toList(),
      ),
    );
  }
}
