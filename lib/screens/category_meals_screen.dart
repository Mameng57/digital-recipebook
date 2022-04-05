import 'package:flutter/material.dart';
import 'package:digital_recipebook/DUMMY_DATA.dart';
import 'package:digital_recipebook/models/meal.dart';
import 'package:digital_recipebook/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "/category-meals";

  @override
  Widget build(BuildContext context) {
    final routeParams =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String categoryId = routeParams['id']!;
    final String categoryTitle = routeParams['title']!;
    final Color categoryColor = routeParams['color']!;
    final List<Meal> mealsData = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                categoryColor,
                categoryColor.withOpacity(0.2),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: mealsData.length,
        itemBuilder: (context, index) {
          return MealItem(
            mealsData[index].title,
            mealsData[index].imageUrl,
            mealsData[index].duration,
            mealsData[index].complexity,
            mealsData[index].affordability,
            categoryColor,
          );
        },
      ),
    );
  }
}
