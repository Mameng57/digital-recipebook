import 'package:flutter/material.dart';
import 'package:digital_recipebook/home.dart';
import 'package:digital_recipebook/screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Digital Recipebook",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange[200],
          shadowColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontFamily: "RobotoCondensed",
          ),
        ),
        primaryColor: Colors.orange[200],
        textTheme: TextTheme(
          headline5: TextStyle(
            fontSize: 20,
            color: Colors.black54,
            fontWeight: FontWeight.w600,
            fontFamily: "Raleway",
          ),
          headline6: TextStyle(
            color: Colors.white,
            fontFamily: "Raleway",
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            color: Colors.black45,
            fontFamily: "Raleway",
            fontWeight: FontWeight.normal,
          )
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => Home(),
        CategoryMealsScreen.routeName: (_) => CategoryMealsScreen(),
      },
    );
  }
}
