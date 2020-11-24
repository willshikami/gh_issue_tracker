import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    // Define the default brightness and colors.
    primaryColor: Color(0xFF2F80ED),
    primaryColorDark: Color(0xFF517C9C),
    backgroundColor: Color(0xFFECF3F8),
    splashColor: Color(0xFFFFFFFF),
    accentColor: Color(0xFFF2994A),
    primaryColorLight: Color(0xFF9AA0AC),
    shadowColor: Colors.black,

    // Default font family.
    fontFamily: 'Avenir',

    // Text Theme
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        fontSize: 16.0,
        fontStyle: FontStyle.normal,
      ),
      headline4: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
      headline5: TextStyle(
        fontSize: 16.0,
      ),
      bodyText1: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
      ),
      bodyText2: TextStyle(
        fontSize: 12.0,
      ),
    ),
  );
}
