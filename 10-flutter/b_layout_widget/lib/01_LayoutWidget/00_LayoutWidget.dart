import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutCombination extends StatelessWidget{

  LayoutCombination({super.key});

  @override
  Widget build(BuildContext context) {
    // 현재 화면을 기준으로 화면의 너비를 가져오겠다.
    double screenWidth = MediaQuery.of(context).size.width;

    /*
     * EdgetInsets
     * 위젯의 여백이나 패딩을 설정할 때 사용하는 클래스이다.
     * 이 클래스는 네 방향(위, 아래, 왼쪽, 오른쪽)의 여백을 개별적으로 설정할 수 있는 다양한 생성자를 제공한다.
     *
     * .all : 모든 방향에 동일한 크기의 여백을 설정한다.
     * .symmectric : 수직 방향과 수평 방향에 대한 여백을 설정한다.
     * .only : 각 방향에 대해 개별적으로 여백을 설정한다.
     */
    return ListView( // 05번에서 자세히 다룸
      children: [
        Container(
          width: screenWidth,
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(16.0),
          color: Colors.blue,
          child: Column(
            children: [
              const Text("Container 위젯")
            ],
          ),
        )
      ],
    );
  }

}