import 'package:e_navigationbar_widget/00_common/ScaffoldWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QueryStringValueScreen extends StatelessWidget{

  final String? name;
  final int? age;

  const QueryStringValueScreen(this.name, this.age);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(widget: Center(
      child: Column(
        children: [
          Text(name ?? "입력한 이름이 없습니다."),
          (age == null) ? const Text("입력한 나이가 없습니디ㅏ.") : Text("나이: $age"),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/pageview");
          }, child: const Text("pageView 이동"))
        ],
      ),
    )
    );
  }
}