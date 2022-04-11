import 'package:flutter/material.dart';
import 'package:digital_recipebook/models/meal.dart';

class MealItem extends StatelessWidget {
  final String _mealTitle;
  final String _mealImage;
  final int _duration;
  final Complexity _complexity;
  final Affordability _affordability;
  final Color _fillColor;

  const MealItem(
    this._mealTitle,
    this._mealImage,
    this._duration,
    this._complexity,
    this._affordability,
    this._fillColor, {Key? key}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(7),
      splashColor: this._fillColor.withOpacity(0.5),
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.15,
        padding: const EdgeInsets.only(left: 10),
        margin: const EdgeInsets.all(2),
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
              width: MediaQuery.of(context).size.width / 1.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    _mealTitle,
                    overflow: TextOverflow.ellipsis,
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
            Container(
              width: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  image: NetworkImage(
                    _mealImage,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
