import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = "/meal-detail";

  const MealDetailScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String mealId =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      body: Center(
        child: Text(
          mealId
        ),
      ),
    );
  }
}
