import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String _title;
  final Color _color;

  const CategoryItem(
    this._title,
    this._color,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [_color.withOpacity(0.7), _color],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(_title, style: Theme.of(context).textTheme.headline6,),
    );
  }
}
