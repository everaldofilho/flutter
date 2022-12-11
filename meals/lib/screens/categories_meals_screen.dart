// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final Category category =
        (ModalRoute.of(context)?.settings.arguments as Category);

    return Scaffold(
      appBar: AppBar(
        title: Text("Receitas"),
      ),
      body: Center(
        child: Text("Receitas por Categoria ${category.title}"),
      ),
    );
  }
}
