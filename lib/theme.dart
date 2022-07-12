import 'package:flutter/material.dart';

final petTheme = ThemeData(
    primaryColor: Colors.white,
    textTheme: const TextTheme(
        headline1: TextStyle(fontFamily: 'MuseoCyrl', fontWeight: FontWeight.bold, fontSize: 23, color: Colors.black),
        headline2: TextStyle(fontFamily: 'MuseoCyrl', fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),

        headline3: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
        headline4: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),

        bodyText1: TextStyle(fontFamily: 'Roboto', fontSize: 13, color: Colors.black),
        bodyText2: TextStyle(fontFamily: 'Roboto', fontSize: 12),
    ),
    fontFamily: 'Roboto',
);