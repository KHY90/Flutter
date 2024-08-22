import 'package:cafe_app/widgets/CoffeeWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/Coffeemodel.dart';

class CoffeeScreen extends StatelessWidget{

  List<CoffeeItem> coffees = [
    CoffeeItem(title: "1번 커피", description: "1번 설명", url: "assets/image.png"),
    CoffeeItem(title: "2번 커피", description: "1번 설명", url: "assets/image.png"),
    CoffeeItem(title: "1번 커피", description: "1번 설명", url: "assets/image.png"),
    CoffeeItem(title: "2번 커피", description: "1번 설명", url: "assets/image.png"),
    CoffeeItem(title: "1번 커피", description: "1번 설명", url: "assets/image.png"),
    CoffeeItem(title: "2번 커피", description: "1번 설명", url: "assets/image.png"),
    CoffeeItem(title: "1번 커피", description: "1번 설명", url: "assets/image.png"),
    CoffeeItem(title: "2번 커피", description: "1번 설명", url: "assets/image.png"),
  ];

  CoffeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coffee Items"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: coffees.length,
        itemBuilder: (context, index){
          return CoffeeWidget(coffeeItem: coffees[index], index: index);
        },
      ),
    );
  }
}