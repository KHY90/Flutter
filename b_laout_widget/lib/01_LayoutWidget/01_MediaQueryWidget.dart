import 'package:flutter/cupertino.dart';

/*
* Column
* column은 flutter에서 수직 방향으로 여러 위젯을 배치할 때 사용하는 레이아웃 위젯이다.
* 자식 위젯들을 위에서 아래로 쌓아올리는 구조, 다양한 정렬 및 간격 조정 기능을 제공한다.
*
* 주요 속성
* children : Column 안에 포함될 자식 위젯들의 리스트이다.
* mainAxisAlignment : 수직 방향(주 축)에서 자식 위젯의 정렬 방식을 설정한다.
* crossAxisAlignment : 수평 방향(교차 축)에서 자식 위젯의 정렬 방식을 설정한다.
* mainAxisSize : 주 축의 크기를 설정한다. MainAxisSize.max(기본값) 또는 MainAxisSize.main 을 사용할 수 있다.
* vertivalDirection : 자식 위젯의 배치 방향을 설정한다. VerticalDirection.down(기본값) 또는
*                     VerticalDirection.up을 선택할 수 있다.
* */
class MediaQueryWidget extends StatelessWidget{
  const MediaQueryWidget({super.key});

  @override
  Widget build(BuildContext context) {

    /*
    * MediaQuery
    * 플러터에서 디바이스의 화면 크기, 방향, 밀도 등의 정보를 제공하는 위젯으로
    * 이를 통해서 앱에서 다양한 화면크기과 해상도에 따라 적절한 레이아웃과 스타일을 적용할 수 있다.
    *
    * 주요 사용법
    * MediaQuery.of(context) : 현재 BuildContext에 대한 MediaQueryData를 가져온다.
    *                         이를 통해 화면의 다양한 속성에 접근할 수 있다.
    *
    * 주요 속성
    * size : 화면의 크기를 나타내는 size 객체이다.
    * orientation : 화면의 방향을 나타내는 Orientation 객체이다.
    * devicePixelRatio : 디바이스의 픽셀 밀도를 나타낸다.
    * padding : 화면의 패딩(상태 바, 네비게이션 바 등)을 나타내는 EdgeInsets 객체이다.
    * viewInsets : 소프트 키패드와 같은 요소에 의해 가려진 영역을 나타낸다.
    * */
    final mediaQuery = MediaQuery.of(context);

    return Column(
      children: [
        Text("화면 너비 : ${mediaQuery.size.width * 1}"),
        Text("화면 높이 : ${mediaQuery.size.height * 1}"),
        Text("화면 방향 : ${mediaQuery.orientation == Orientation.portrait ? "세로" : "가로"}"),
        Text("화면 방향 : ${mediaQuery.orientation == Orientation.portrait ? "세로" : "가로"}"),
        Text("픽셀 밀도 : ${mediaQuery.devicePixelRatio}")
      ],
    );



  }

}