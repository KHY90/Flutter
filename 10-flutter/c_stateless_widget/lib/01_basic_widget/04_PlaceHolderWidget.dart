import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* placeholder
* 플러터에서 사용되는 기본 위젯 중 하나로, 주로 개발 중에 자리를 표시할 때 사용된다.
* 이 위젯은 ui 요소가 아직 구현되지 않았음을 나타내거나 특정 위젯의 위치를 표시하는데 유용하게 사용된다.
*
* 주요 속성
* color : 자리 표시자의 색상을 지정한다.
* strokeWidth : 자리 표시자의 테두리 두께를 지정하며 기본 값은 2.0이다.
* fallbackWidth : 자리 표시자의 너비를 지정한다. 기본 값은 200.0
* fallbackheight : 자리 표시자의 높이를 지정한다. 기본 값은 200.0
* */
class PlaceHolderWiget extends StatelessWidget{

  const PlaceHolderWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      color: Colors.greenAccent,
      fallbackWidth: 300.0,
      fallbackHeight: 100.0,
      strokeWidth: 3.0,
    );
  }
}