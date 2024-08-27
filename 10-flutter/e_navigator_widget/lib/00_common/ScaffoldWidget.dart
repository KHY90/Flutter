import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget{

  Widget? widget;

  ScaffoldWidget({required this.widget, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation 위젯"),),
      body: widget,
    );
  }
}