import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xFF2ECC71),
  primaryColorLight: Color(0xFFBB86FC),
  primaryColorDark: Color(0xFF3700B3),
  scaffoldBackgroundColor: Color(0xFFecf0f1),
  cardColor: Colors.white,
  dividerColor: Colors.grey[300],
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    titleTextStyle: TextStyle(color: Colors.white),
    backgroundColor: Color(0xFF2ECC71),
  ),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.green,
    accentColor: Colors.greenAccent,
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(color: Colors.grey),
    labelStyle: TextStyle(
      color: Color(0xFF2ECC71),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid,
        color: Color(0xFF2ECC71),
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid,
        color: Color(0xFF2ECC71),
      ),
    ),
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
    buttonColor: Color(0xFF2ECC71),
    textTheme: ButtonTextTheme.primary,
  ),
);
