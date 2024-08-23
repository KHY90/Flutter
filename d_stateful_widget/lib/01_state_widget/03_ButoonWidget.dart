import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonCombination extends StatelessWidget{

  const ButtonCombination({super.key});

  void messageBtn(BuildContext context, String text){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(text + "버튼 클릭"))
    );

  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 외각선이 있는 버튼 위젯이다.
        OutlinedButton(
            onPressed: () => messageBtn(context, "아웃라인"),
            child:const Text("아웃라인 버튼")),
        IconButton(
            onPressed: () => messageBtn(context, "아이콘"),
            icon: const Icon(Icons.favorite)
        ),
        FloatingActionButton(
          onPressed: () => messageBtn(context, "플로팅 액션"),
          mini: true,
          child: const Icon(Icons.add),
        )
      ],
    );
  }
}