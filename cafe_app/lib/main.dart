import 'package:cafe_app/views/CoffeeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Cards',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( // 앱의 기본 테마를 정의하는 부분이다.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true
      ),
      home: CoffeeScreen(),
    );
  }
}
