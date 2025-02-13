import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  fontFamily: 'Comfortaa',
  primaryColor: Colors.blueAccent,
  canvasColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    headlineLarge: TextStyle(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: TextStyle(
        fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold,),
    headlineSmall: TextStyle(fontSize: 14, color: Colors.grey),
  ),
);
