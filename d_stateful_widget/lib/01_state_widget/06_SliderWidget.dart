import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget{

  const SliderWidget({super.key});

  @override
  _SliderState createState() => _SliderState();

}

class _SliderState extends State<SliderWidget>{

  double score = 0;

  void scoreMethod(double value){
    setState(() {
      score = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("$score"),
        Slider(
            value: score.toDouble(),
            min: 0,
            max: 100,
            divisions: 10, // value 나누기 값
            onChanged: scoreMethod)
      ],
    );
  }
}