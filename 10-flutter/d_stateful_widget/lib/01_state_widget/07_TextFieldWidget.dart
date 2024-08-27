import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget{

  @override
  _TextFieldState createState() => _TextFieldState();

}

class _TextFieldState extends State<TextFieldWidget>{

  String text = "";

  void setInput(String value){
    setState(() {
      text = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextContainer(text),
        EmailTextWidget(setInput),
      ],
    );
  }
}

// ===============================================================

class TextContainer extends StatelessWidget{

  late String text;

  TextContainer(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("입력한 텍스트 : $text"),
      ],
    );
  }
}

class EmailTextWidget extends StatelessWidget{
  late Function(String) inputId;

  final TextEditingController controller = TextEditingController();

  EmailTextWidget(this.inputId);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 300,
          height: 50,
          child: TextField(
            textAlign: TextAlign.center,
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "텍스트 입력"
            ),
            onSubmitted: inputId,
          ),
        )
      ],
    );
  }
}