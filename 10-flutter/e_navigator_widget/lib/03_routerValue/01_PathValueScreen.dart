import 'package:e_navigationbar_widget/00_common/ScaffoldWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PathValueScreen extends StatelessWidget{
  const PathValueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int? pathValue = ModalRoute.of(context)!.settings.arguments as int?;

    return ScaffoldWidget(widget: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("pathValue: $pathValue"),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text("이전 페이지"))
        ],
      ),
    ));
  }
}