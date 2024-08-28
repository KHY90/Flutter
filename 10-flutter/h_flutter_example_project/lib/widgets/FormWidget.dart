import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  String? value;
  // string 타입을 인자로 받을 수 있도록 설정
  Function(String?) setValue;

  FormWidget({required this.value,required this.setValue});

  @override
  _FormState createState() => _FormState();
}


class _FormState extends State<FormWidget> {


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.value,
      decoration: const InputDecoration(label:Text("값을 입력하세요")),
      validator: (value){
        if(value == null || value.isEmpty){
          return "값을 입력해주세요";
        }
        return null;
      },
      onSaved: widget.setValue,
    );
  }
}