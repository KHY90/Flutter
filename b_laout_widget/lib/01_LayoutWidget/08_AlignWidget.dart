import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* align
* 플러터에서 자식 위젯을 부모 위젯의 특정 위치에 정렬하는데 사용되는 위젯이다.
* 자식 위젯의 위치를 설정할 수 있어 다양한 레이아웃을 만들 때 유용하다.
*
* 주요 속성
* alignment : 자식 위젯의 위치를 설정한다.
* widthFactor : 자식 위젯의 너비를 조절하는 비율이다.
* heightFactor : 자식 위젯의 높이를 조절하는 비율이다.
* child : 정렬할 자식 위젯이다.
* */
class AlignWidget extends StatelessWidget{

  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: _ContainerWidget(color: 'red'),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: _ContainerWidget(color: ''),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: _ContainerWidget(color: 'green'),
        ),
      ],
    );
  }
}
// _ private 가 된다.
class _ContainerWidget extends StatelessWidget{

  String? color;
  _ContainerWidget({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    Color? containerColor;

    if(color != null){
      switch(color!.toLowerCase()){
        case 'red':
          containerColor = Colors.red;
          break;
        case 'blue':
          containerColor = Colors.blue;
          break;
        case 'green':
          containerColor = Colors.green;
          break;
        case 'blue':
          containerColor = Colors.blue;
          break;
        default :
          containerColor = Colors.grey;
      }
    }else{
      containerColor = Colors.lightGreenAccent;
    }
    return Container(
      color: containerColor,
      width: 100,
      height: 100,
      child: const _CenterWidget(),
    );
  }
}

class _CenterWidget extends StatelessWidget{
  const _CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("위젯"),
    );
  }

}