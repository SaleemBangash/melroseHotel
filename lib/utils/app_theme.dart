import 'package:flutter/material.dart';

class AppTheme {
  static const _primaryColor = const Color(0xfff4f4f1);
  // static const _primaryColor = Color(0xffac9770);

  static data() => ThemeData(
        scaffoldBackgroundColor: Color(0xfffdfdfd),

        fontFamily: "Rubik",
        primaryColor: _primaryColor,
        // primarySwatch: Colors.orange,
        textTheme: TextTheme(
          bodyText2: _normalStyle(),
          headline3: _invoiceStyle(),
          headline1: _titleStyle(),
          headline2: _boldText(),
        ),
        appBarTheme: _appBarTheme(),
        // tabBarTheme: TabBarTheme(indicator: Decoration())
      );

  static TextStyle _normalStyle() => const TextStyle(
        fontSize: 17,
        fontFamily: "Rubik",
        color: Colors.black,
        fontWeight: FontWeight.w500,
      );
  static TextStyle _titleStyle() => const TextStyle(
      fontSize: 22, fontWeight: FontWeight.w900, color: Colors.black);
  static TextStyle _boldText() => const TextStyle(
      fontSize: 17, fontWeight: FontWeight.w900, color: Colors.black);
  static TextStyle _invoiceStyle() =>
      const TextStyle(fontSize: 13, color: Colors.black);

  static AppBarTheme _appBarTheme() => AppBarTheme(
      titleTextStyle: _titleStyle(),
      elevation: 0,
      color: Colors.white,
      toolbarTextStyle: _titleStyle(),
      centerTitle: true);
}
