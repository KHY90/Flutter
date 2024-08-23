import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  const SingleChildScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FormWidget(),
    );
  }
}

class FormWidget extends StatefulWidget {
  @override
  FormStatus createState() => FormStatus();
}

class FormStatus extends State<FormWidget> {
  String? id;
  String? pass;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormFieldWidget(id, false, (value) {id = value;}),
            TextFormFieldWidget(pass, true, (value){pass=value;}),

            const SizedBox(height: 20,),

            ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    _formKey.currentState!.save();
                    setState(() {

                    });
                  }
                },
                child: const Text("제출")
            ),

            TextShow(id ?? "", pass ?? "")
          ],
        ));
  }
}

class TextFormFieldWidget extends StatelessWidget {
  final String? inputText;
  final bool option;
  final Function(String?)? onSaved;

  const TextFormFieldWidget(this.inputText, this.option, this.onSaved);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: option,
      decoration: InputDecoration(labelText: option ? "비밀번호" : "아이디"),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return option ? "비밀번호를 입력해주세요" : "아이디를 입력해주세요";
        }
        return null;
      },
      onSaved: onSaved,
    );
  }
}

class TextShow extends StatelessWidget {
  final String id;
  final String pass;

  const TextShow(this.id, this.pass);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("이름 : $id"),
        const SizedBox(
          width: 10,
        ),
        Text("비밀번호 : $pass")
      ],
    );
  }
}
