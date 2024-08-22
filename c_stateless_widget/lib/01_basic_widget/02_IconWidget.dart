import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* icon
* flutter에서 아이콘을 화면에 표시하는 데 사용되는 위젯이다.
* 이 위젯은 Material Design 아이콘 세트를 사용하여 다양한 아이콘을 쉽게 추가할 수 있도록 한다.
* 아이콘은 일반적으로 버튼이나 네비게이션 바 등에서 시각적 요소로 사용된다.
*
* 주요 속성
* 1. icon : 표시할 아이콘을 지정한다. IconData 객체를 사용하여 아이콘을 설정한다.
* 2. size : 아이콘의 크기를 설정한다. 기본 단위는 픽셀로 한다.
* 3. color : 아이콘의 색상을 설정한다. Color 객체를 사용하여 색상을 지정할 수 있다.
* 4. semanticLabel : 접근성을 위해 아이콘에 대한 설명을 추가하며 스크린 리더가 이 설명을 읽어준다.
*
* 아래의 사이트로 이동하면 아이콘의 목록을 확인할 수 있다.
* https://api.flutter.dev/flutter/material/Icons-class.html
* */
class IconWIdget extends StatelessWidget{
  const IconWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.favorite,
      size: 24.0,
      color: Colors.red,
      semanticLabel: "favorite Icon",
    );
  }
}