import 'package:e_navigationbar_widget/00_common/ScaffoldWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget{
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(widget:
    PageView(
      children: [
        Container(
          color: Colors.red,
          child: const Center(child: Text("페이지1"),
          ),
        ),
        Container(
          color: Colors.blue,
          child: const Center(child: Text("페이지2"),
          ),
        ),
        Container(
          color: Colors.amber,
          child: const Center(child: Text("페이지3"),
          ),
        ),
      ],
    )
    );
  }
}