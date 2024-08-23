import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextBtnWidget extends StatelessWidget{
  final VoidCallback onPressed;

  int count;

  TextBtnWidget(this.onPressed, this.count);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text("증가 : $count"),
        onPressed: () => onPressed(),
      ),
    );
  }
}