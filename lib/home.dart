import 'package:flutter/material.dart';
import 'package:digital_recipebook/screens/categories_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.white,
          child: const Text("Digital Recipebook"),
        ),
      ),
      body: CategoriesScreen(),
    );
  }
}
