import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../models/meal.dart';

class MealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final String? _categoryID = routeArgs['id'];
    final String? _categoryTitle = routeArgs['title'];
    final List<Meal> _categoryMeals = DUMMY_MEALS.where(
      (element) => element.categories.contains(_categoryID)
    ).toList();

    return Scaffold(
      appBar: AppBar(title: Text(_categoryTitle!),),
      body: ListView.builder(
        itemCount: _categoryMeals.length,
        itemBuilder: (ctx, index) {
          return Text(_categoryMeals[index].title);
        }
      ),
    );
  }
}
