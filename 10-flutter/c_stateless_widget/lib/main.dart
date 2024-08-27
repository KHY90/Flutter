import 'package:flutter/material.dart';

import '01_basic_widget/00_Combination.dart';
import '01_basic_widget/01_TextWidget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "basic Widget Example",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title : Center(child:
            Text("Basic widget"),
          )
        ),
        body: const Center(
          child:
            Combination()
        ),
      ),
    );
  }
}
