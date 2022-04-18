import 'package:flutter/material.dart';
import 'package:digital_recipebook/DUMMY_DATA.dart';
import 'package:digital_recipebook/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = "/meal-detail";

  const MealDetailScreen({Key? key}) : super(key: key);

  Widget header(BuildContext context, String text) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 25),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }

  Widget box({required Size constraint, required Widget child}) {
    return Container(
      width: constraint.width / 1.3,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black45,
        ),
      ),
      child: child,
    );
  }

  Widget showSteps(BuildContext context, MapEntry step, Size constraint) {
    final int index = step.key + 1;
    final String value = step.value;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Theme.of(context).primaryColor,
            child: Text(
              "# $index",
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          SizedBox(
            width: constraint.width / 2,
            child: Text(
              value,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery =
        MediaQuery.of(context).size;
    final String mealId =
        ModalRoute.of(context)!.settings.arguments as String;
    final Meal meal =
        DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: ListView(
        children: [
          Image.network(
            meal.imageUrl,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              header(context, "Ingredients"),
              box(
                constraint: mediaQuery,
                child: Column(
                  children: meal.ingredients.map(
                    (element) => Card(
                      color: Theme.of(context).primaryColor,
                      child: ListTile(
                        title: Text(
                          element,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ),
                  ).toList(),
                ),
              ),
              header(context, "Steps"),
              box(
                constraint: mediaQuery,
                child: Column(
                  children: meal.steps.asMap().entries.map(
                    (step) => showSteps(context, step, mediaQuery),
                  ).toList(),
                ),
              ),
            ],
          ),
          SizedBox(height: 50,)
        ],
      ),
    );
  }
}
