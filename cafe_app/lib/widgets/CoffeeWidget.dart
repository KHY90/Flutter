import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/Coffeemodel.dart';

class CoffeeWidget extends StatelessWidget {
  CoffeeWidget({required this.coffeeItem, required this.index, super.key});

  final CoffeeItem coffeeItem;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white10,
            border: Border.all(color: Colors.black, width: 2.0)),
        child: ElevatedButton(
          onPressed: () => print("네비게이션"),
          child: Center(
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                  child: Text("$index"),
                ),
                SizedBox(
                  child: Image(
                      width: 80,
                      height: 100,
                      fit: BoxFit.fill,
                      image: AssetImage(coffeeItem.url.toString())),
                ),
                const SizedBox(width: 8),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("제목 : ${coffeeItem!.title}"),
                        Text(
                          "내용 : ${coffeeItem!.description}",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )),
                SizedBox(
                    width: 50,
                    height: 50,
                    child: IconButton(
                        onPressed: () {
                          print("좋아요 버튼");
                        },
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ))),
                SizedBox(
                    width: 50,
                    height: 50,
                    child: IconButton(
                        onPressed: () {
                          print("삭제 버튼");
                        },
                        icon: const Icon(
                          Icons.cancel,
                          color: Colors.black,
                        ))),
              ],
            ),
          ),
        ));
  }
}