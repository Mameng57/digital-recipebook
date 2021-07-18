import 'package:flutter/material.dart';

class MealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final String? _categoryID = routeArgs['id'];
    final String? _categoryTitle = routeArgs['title'];

    return Scaffold(
      appBar: AppBar(title: Text(_categoryTitle!),),
      body: Center(
        child: Text(_categoryID!),
      ),
    );
  }
}
