import 'package:flutter/material.dart';
import 'package:digital_recipebook/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(this.id, this.title, this.color, {Key? key})
      : super(key: key);

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        'id': this.id,
        'title': this.title,
        'color': this.color,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      splashColor: this.color,
      onTap: () => selectCategory(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              this.color,
              this.color.withOpacity(0.4),
            ],
          ),
          border: Border.all(
            width: 0.5,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Text(
            this.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
