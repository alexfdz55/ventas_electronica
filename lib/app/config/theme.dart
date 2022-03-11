import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Colors.indigo,
    primaryColorDark: const Color(0xff9D0000),
    primaryColorLight: const Color(0xffFF6565),
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: const Color(0xffF5F5F5),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 5.0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    fontFamily: 'Ubuntu',
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 34.0,
      ),
      headline2: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      ),
      headline3: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      ),
      headline4: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
      headline5: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
      ),
      headline6: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      ),
      bodyText1: TextStyle(
        color: Colors.black45,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      ),
      bodyText2: TextStyle(
        color: Colors.black45,
        fontWeight: FontWeight.normal,
        fontSize: 20.0,
      ),
    ),
  );
}
