import 'package:flutter/cupertino.dart';

class PaddingWidget  extends StatelessWidget{

  double size;
  PaddingWidget({required this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding : EdgeInsets.all(size),
      child: const Text("패딩 위젯의 자식 요소"),
    );
  }
}