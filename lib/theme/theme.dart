import 'package:flutter/material.dart';

ThemeData customThemeData = ThemeData(
  primarySwatch: Colors.purple,
  primaryColorLight: Colors.purple,
  primaryColorDark: Colors.orange,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.purple,
  ),
  //fontFamily: 'Georgia',
  iconTheme: const IconThemeData(
    color: Colors.purple,
  ),
/*  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 18.0, fontFamily: 'Hind'),
  ),*/
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.purple,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white54,
    selectedLabelStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14.0,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 14.0,
    ),
  ),
);
