import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: Colors.blueAccent,
  // scaffoldBackgroundColor: Color(0xFFecf0f1),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    titleTextStyle: TextStyle(color: Colors.white),
  ),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: TextStyle(
        fontSize: 18, color: Colors.black),
    headlineSmall: TextStyle(fontSize: 14, color: Colors.grey),
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    shadowColor: Colors.black,
    elevation: 6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
  ),
);
