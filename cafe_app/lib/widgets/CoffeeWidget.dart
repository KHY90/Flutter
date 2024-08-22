import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeWidget extends StatelessWidget{

  int? index;
  String? title;
  String? description;
  String? url;

  CoffeeWidget({required this.index, required this.title, required this. description, required this.url})

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.black,
            width: 3)
      ),
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(flex: 1, child: Text("$index", style: TextStyle(fontSize: 24),)),
          Expanded(flex: 1,
              child: Image(
              width: 100,
              height: 100,
              image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG"))),
          Expanded(
            child: Column(
                mainAxisAlignment : MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("제목 : "),
                Text("내용 : ")
            ],
          ),
          Expanded(flex: 1, child: Icon(Icons.favorite, color: Colors.red)),
          Expanded(flex: 1, child: Icon(Icons.cancel_outlined)),
        ],
      ),
    );
  }
}