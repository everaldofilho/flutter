import 'package:flutter/cupertino.dart';
import 'package:meals/models/category.dart';

enum Complexity {
  simple,
  medium,
  difficult,
}

enum Cost {
  cheap,
  fair,
  expensive,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final Cost cost;
  final bool isLactoseFree;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.isGlutenFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.complexity,
    required this.cost,
    required this.isLactoseFree,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.simple:
        return 'Simples';
      case Complexity.medium:
        return 'Normal';
      case Complexity.difficult:
        return 'Difícil';
      default:
        return 'Desconhecido';
    }
  }

  String get costText {
    switch (cost) {
      case Cost.cheap:
        return 'Barato';
      case Cost.expensive:
        return 'Caro';
      case Cost.fair:
        return 'Justo';
      default:
        return 'Desconhecido';
    }
  }
}
