import 'package:flutter/material.dart';

import 'color.dart';

ThemeData themeData = ThemeData(
  primaryColor: colorTheme,
  appBarTheme: AppBarTheme(
    color: colorTheme,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: colorTheme, 
    minWidth: 135,
  ),
  fontFamily: 'ProximaNova',

  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 15, color: Colors.white),
    headline2: TextStyle(fontSize: 10, color: Colors.white),
    headline3: TextStyle(fontSize: 17, color: Colors.black),
    // Product cards ( Title, value )
    headline5: TextStyle(fontSize: 18, color: colorGreyText),
    headline6: TextStyle(fontSize: 15, color: colorGreyText2),
    // Title icons NavigationBar
    bodyText1: TextStyle(fontSize: 13, color: colorTheme),
    // Text profile settings
    bodyText2: TextStyle(fontSize: 16, color: colorBlackBodyText2),
    subtitle1: TextStyle(fontSize: 19, color: colorBlackBodyText2),
  )
);
