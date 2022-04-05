import 'package:flutter/material.dart';
import 'package:digital_recipebook/DUMMY_DATA.dart';
import 'package:digital_recipebook/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 15,
        crossAxisSpacing: 10,
      ),
      padding: EdgeInsets.all(10),
      children: DUMMY_CATEGORIES
          .map(
            (category) => CategoryItem(
              category.id,
              category.title,
              category.color,
            ),
          )
          .toList(),
    );
  }
}
