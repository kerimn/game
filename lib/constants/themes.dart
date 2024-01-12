import 'package:flutter/material.dart';
import 'package:game/constants/colors.dart';

final ThemeData myTheme = ThemeData(
  fontFamily: 'Poppins',
  scaffoldBackgroundColor: Colors.white,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(mainColor),
      textStyle:
          MaterialStateProperty.all<TextStyle>(const TextStyle(fontSize: 18.0)),
    ),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 18.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: "Inter",
    ),
    titleSmall: TextStyle(fontSize: 13, fontFamily: "Inter"),
    titleMedium: TextStyle(
        fontSize: 15, fontWeight: FontWeight.bold, fontFamily: "Inter"),
    titleLarge: TextStyle(
      fontSize: 18.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: "Inter",
    ),
  ),
);
