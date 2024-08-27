import 'package:flutter/cupertino.dart';

/*
* Wrap
* 자식 위젯들을 수평 또는 수직 방향으로 나열하며, 공간이 부족할 경우 자동으로
* 다음 줄로 넘어가게 하는 레이아웃 위젯이다. 이 위젯은 다양한 크기의 자식 위젯들을
* 유연하게 배치할 수 있다. 특히 동적인 리스트나 아이콘을 표시할 때 유용하다.
*
* 주요 속성
* children : Wrap 안에 포함될 자식 위젯들의 리스트이다.
* direction : 자식 위젯의 배치 방향을 설정한다. 기본 값은 Axis.horizontal 이다.
* alignment : 자식 위젯의 정렬 방식을 설정한다.
* spacing : 자식 위젯 간의 수평 간격을 설정한다.
* runSpacing : 줄 간의 간격을 설정한다.
* runAlignment : 여러 줄의 정렬 방식을 설정한다.
* */
class WrapWidget extends StatelessWidget{

  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        SizedBox(
          width: 100,
          child: Text("첫 번째"),
        ),
        SizedBox(
          width: 100,
          child: Text("두 번째"),
        ),
        SizedBox(
          width: 100,
          child: Text("세 번째"),
        )
      ],
    );
  }
}
