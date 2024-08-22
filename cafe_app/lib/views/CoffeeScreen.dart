import 'package:cafe_app/widgets/CoffeeWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeScreen extends StatelessWidget{

  List<String> title = [
    "1번 메뉴",
    "2번 메뉴",
    "3번 메뉴",
    "4번 메뉴",
    "5번 메뉴",
    "6번 메뉴",
    "7번 메뉴",
  ];

  List<String> description = [
    "1번 설명",
    "2번 설명",
    "3번 설명",
    "4번 설명",
    "5번 설명",
    "6번 설명",
    "7번 설명",
  ];

  CoffeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: const Text("커피가 좋아"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {

        }
      )
    );
  }
}