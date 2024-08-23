import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget{

  const SwitchWidget({super.key});

  @override
  _SwitchState createState() => _SwitchState();

}

class _SwitchState extends State<SwitchWidget>{

  bool _isChecked = false;

  void toggle(bool value){
    setState(() {
      _isChecked = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("$_isChecked"),
        Switch(
            value: _isChecked,
            onChanged: toggle),
      ],
    );
  }
}