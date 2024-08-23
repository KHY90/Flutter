import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElevatedBtnWidget extends StatelessWidget{

  final VoidCallback onPressed;

  int count;

  ElevatedBtnWidget({required this.onPressed,required this.count, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("감소 : $count"),
        onPressed: () => onPressed(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          overlayColor: Colors.red,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}