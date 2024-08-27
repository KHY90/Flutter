import 'package:flutter/cupertino.dart';

/*
* Row
* flutter에서 수평 방향으로 여러 위젯을 배치할 때 사용하는 레이아웃 위젯이다.
* 자식들을 왼쪽에서 오른쪽으로 나란히 배치하는 구조로, 다양한 정렬 및 간격 조정 기능을 제공한다.
*
* 주요 속성
*
* children : row 안에 포함될 자식 위젯들의 리스트이다.
* mainAxisAlignment : 수평 방향(주 축)에서 자식 위젯의 정렬 방식을 설정한다.
* crossAxistAlignment : 수직 방향(교차 축)에서 자식 위젯의 정렬 방식을 설정한다.
* mainAxisSize : 주 축의 크기를 설정한다. mainAxisSize.max(기본 값) 또는 mainAxisSize.main 사용가능
* textDirection : 텍스트 방향을 설정한다.
* */
class RowWidget extends StatelessWidget{

  const RowWidget({super.key});

  /*
  * Expanded
  * 부모 위젯의 남은 공간을 자식 위젯이 차지할 수 있도록 해주는 위젯이다.
  * 주로, Row, Cloumn 또는 Flex와 함께 사용되며 자식 위젯의 크기를 자동으로
  * 조정하여 공간을 최적화한다.
  *
  * 주요 속성
  * child : Expanded 안에 포함될 자식 위젯
  * flex : 자식 위젯이 차지할 공간 비율을 설정한다. 기본 값은 1이며,
  *       여러 Expanded 위젯이 있을 경우 이 값을 통해 상대적으로 공간을 나눈다.
  * */
  /*
  * Center
  * 우젯을 화면의 중앙에 배치하는데 사용하는 위젯이다.
  * 자식 위젯이 부모 위젯의 중앙에 위치하도록 정렬하며, 간단한 레이아웃 구성에 유용하다.
  *
  * 주요 속성
  * child : Center안에 포함될 자식 위젯이다.
  * widthFactor : 자식 위젯의 너비를 조절하는 비율이다.
  * heightFactor : 자식 위젯의 높이를 조절하는 비율이다.
  * */
  @override
  Widget build(BuildContext context) {
    return const Row(
      textDirection: TextDirection.ltr,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Center(child: Text("첫 번째 위젯")
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(child: Text("두 번째 위젯")
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(child: Text("세 번째 위젯")
          ),
        ),
      ],
    );
  }
}