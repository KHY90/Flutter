import 'package:flutter/cupertino.dart';

/*
* sizeBox
* SizeBox는 flutter에서는 고정된 크기의 박스를 생성하는 위젯이다.
* 주로 위젯의 크기를 설정하거나, 위젯 간의 간격을 조정하는데 사용된다.
* SizeBox는 자식 위젯을 감싸고, 지정된 너비와 높이를 적용할 수 있다.
*
* 주요 속성
* width : SizeBox의 너비를 설정한다.
* height : SizeBox의 높이를 설정한다.
* child : sizeBox안에 포함될 자식 위젯을 설정한다.
* */
class SizedBoxWidget extends StatelessWidget{

  const SizedBoxWidget ({super.key});

  @override
  Widget build(BuildContext context) {

    return const SizedBox(
      width: 10,
      height: 10,
      child: Text("sizeBox"),
    );


  }

}