import 'package:flutter/material.dart';

import '01_state_widget/00_StateCombination.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor : Colors.deepPurpleAccent),
        useMaterial3: true
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("State widget"),
        ),
        body: ListView(
          children: const [
            InteractionWidget(),
          ],
        ),
      ),
    );
  }
}
