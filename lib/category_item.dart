import 'package:flutter/material.dart';
import 'package:meal_app/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final int categoryId;
  const CategoryItem({
    super.key,
    required this.categoryId,
    required this.title,
    required this.color,
  });
  void selectCategory(ctx, title) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return CategoryMealsScreen(
          categoryId: categoryId,
          title: title,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context, title),
      splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
