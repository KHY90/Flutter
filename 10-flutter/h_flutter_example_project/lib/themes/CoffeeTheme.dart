import 'package:flutter/material.dart';

/*
* themes
* 어플리케이션의 테마 스타일과 색상, 폰트, 버튼 등의 스타일을 전역에서 정의하여
* 일관된 ui를 화면서 표시하기 위한 용도의 패키지이다.
* */
class CafeAppTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: Colors.blue,
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        color: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      textTheme: const TextTheme(
        bodySmall: TextStyle(fontSize: 16.0, color: Colors.black),
        bodyMedium: TextStyle(fontSize: 14.0, color: Colors.black54),
        bodyLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
      buttonTheme: const ButtonThemeData(
          buttonColor: Colors.amber, textTheme: ButtonTextTheme.primary));

  static ThemeData darkTheme = ThemeData(
      primaryColor: Colors.blueGrey,
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        color: Colors.blueGrey,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      textTheme: const TextTheme(
          bodySmall: TextStyle(fontSize: 16.0, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 16.0, color: Colors.white70),
          bodyLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
      buttonTheme: const ButtonThemeData(
          buttonColor: Colors.blueGrey, textTheme: ButtonTextTheme.primary));
}

