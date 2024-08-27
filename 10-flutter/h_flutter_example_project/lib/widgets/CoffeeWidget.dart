import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:h_flutter_example_project/controllers/CoffeViewModel.dart';
import 'package:h_flutter_example_project/models/CoffeeItem.dart';
import 'package:provider/provider.dart';

import 'ImageWidget.dart';

class CoffeeWidget extends StatelessWidget{
  final CoffeeItem coffeeItem;
  final int index;

  const CoffeeWidget({required this.coffeeItem, required this.index});

  @override
  Widget build(BuildContext context) {
    // final favoriteViewModel = Provider.of<FavoriteViewModel>(context);
    final coffeeViewModel = Provider.of<CoffeeViewModel>(context);

    // bool isTrue = favoriteViewModel.isFavorite(index);
    bool isTrue = true;

    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white10,
        border: Border.all(color: Colors.black, width: 2.0)),
      child: ElevatedButton(onPressed: () => print("네비게이션 기능 추가해야됨"),
          child: Center(
            child: Row(
              children: [
                Text("$index"),
                ImageWidget(image: coffeeItem!.image.toString()),
                const SizedBox(width: 8,),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("제목 : ${coffeeItem!.title}"),
                        Text("제목 : ${coffeeItem!.description}",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    )),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: IconButton(
                      onPressed: (){
                        // 좋아요 버튼
                      },
                      icon: Icon(
                         isTrue ? Icons.favorite : Icons.favorite_border),
                      color: isTrue ? Colors.red : Colors.black,
                  )
                ),
                SizedBox(
                    width: 50,
                    height: 50,
                    child: IconButton(
                      onPressed: (){
                        // 삭제 버튼
                      },
                      icon: const Icon(
                         Icons.cancel,
                         color: Colors.black,
                    )
                  )
                )
              ],
            ),
          ),
      ),
    );
  }
}