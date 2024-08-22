import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* Text()
* 텍스트를 화면에 표시하는 기본적인 위젯으로 해당 위젯은 문자열을 화면에 렌더링하고,
* 다양한 스타일을 적용하여 텍스트의 모양을 조정할 수 있도록 도와준다.
*
* 주요 속성
* 1. data : 표시할 문자열이다. 이는 필수 속성으로 텍스트의 내용을 설정한다.
* 2. style : TextStyle 객체를 사용하여 글자 크기, 생상, 두께, 기울임체 등을 설정한다.
* 3. textAlign : 텍스트의 정렬을 설정한다.
* 4. overflow : 텍스트가 지정된 공간을 넘칠 경우 처리 방법을 설정한다.
* 5. maxLines : 텍스트의 최대 줄 수를 설정한다. 이 속성을 사용하여 택스트가 여러 줄로 나뉘도록 할 수 있다.
* */
class TextWidget extends StatelessWidget{

  /*
  * 플러터에서는 위젯에 key를 사용하여 위젯의 고유성을 식별하는데
  * 이를 통해 플러터의 상태를 유지하고 위젯 트리를 효율적으로 업데이트 할 수 있게 된다.
  *
  * 1. 위젯 고유성 : key는 위젯의 고유성을 보장하며 동일한 타입의 여러 위젯이 있을 때,
  *               플러터는 key를 사용하여 어떤 위젯이 어떤 상태를 가지고 있는지 추적할 수 있다.
  * 2. 상태 유지 : stateful 위젯을 사용할 때, key를 사용하면 올바른 상태를 유지할 수 있게 된다.
  * */
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "hello Flutter",
      textAlign: TextAlign.center, // 글자 정렬
      maxLines: 1,
      style: TextStyle( // 텍스트의 속성을 정의할 수 있는
        fontSize: 24,
        color: Colors.deepOrangeAccent,
        fontWeight: FontWeight.bold
      ),
    );
  }
}