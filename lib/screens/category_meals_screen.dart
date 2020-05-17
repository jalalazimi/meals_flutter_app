import 'package:flutter/material.dart';
import 'package:meals/widgets/meal_item.dart';

import '../data.dart';

class CategoriesMealsScreen extends StatelessWidget {
  static const routeName = 'categories-meals';

//  final String id;
//  final String title;
//
//  CategoriesMealsScreen(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs["id"];
    final categoriesMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(routeArgs['title']),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
            itemBuilder: (ctx, index) {
              return MealItem(
                  id: categoriesMeals[index].id,
                  imageUrl: categoriesMeals[index].imageUrl,
                  title: categoriesMeals[index].title,
                  duration: categoriesMeals[index].duration,
                  affordability: categoriesMeals[index].affordability,
                  complexity: categoriesMeals[index].complexity);
            },
            itemCount: categoriesMeals.length),
      ),
    );
  }
}
