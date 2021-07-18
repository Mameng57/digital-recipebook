import 'package:flutter/material.dart';

class MealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Recipe"),),
      body: Center(
        child: const Text("Recipes!"),
      ),
    );
  }
}
