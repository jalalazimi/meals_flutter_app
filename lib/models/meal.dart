import 'package:flutter/material.dart';

enum Complexity { Simple, Challenging, Hard }
enum Affordability { Affordable, Pricey, Luxurious }

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final Affordability affordability;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
  final Complexity complexity;

  const Meal(
      {@required this.id,
      @required this.title,
      @required this.categories,
      @required this.imageUrl,
      @required this.affordability,
      @required this.steps,
      @required this.duration,
      @required this.isGlutenFree,
      @required this.isVegetarian,
      @required this.isLactoseFree,
      @required this.complexity,
      @required this.isVegan,
      @required this.ingredients});
}
