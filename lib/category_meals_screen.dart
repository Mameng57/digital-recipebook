import 'package:flutter/material.dart';
import 'package:digital_recipebook/DUMMY_DATA.dart';
import 'package:digital_recipebook/models/meal.dart';

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
        title: Text(categoryTitle,),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: categoryColor,
            gradient: LinearGradient(
              colors: [
                categoryColor,
                categoryColor.withOpacity(0.5),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: mealsData.length,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.15,
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black38,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mealsData[index].title,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
