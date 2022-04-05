import 'package:flutter/material.dart';
import 'package:digital_recipebook/models/meal.dart';

class MealCard extends StatelessWidget {
  final String _mealTitle;
  final String _mealImage;
  final int _duration;
  final Complexity _complexity;
  final Affordability _affordability;

  const MealCard(
      this._mealTitle,
      this._mealImage,
      this._duration,
      this._complexity,
      this._affordability, {Key? key}
    )
    : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  _mealTitle,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  "Duration : ${_duration.toString()} minutes",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  "Complexity : ${_complexity.toShortString()}",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  "Affordability : ${_affordability.toShortString()}",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.network(
              _mealImage,
              width: MediaQuery.of(context).size.width / 7.5,
            ),
          ),
        ],
      ),
    );
  }
}
