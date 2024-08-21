import 'package:b_layout_widget/01_layout_widget/00_LayoutWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "flutter demo",
        debugShowCheckedModeBanner: false,
        theme: ThemeData( // 앱의 기본 테마를 정의하는 부분이다.
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true
        ),
        home: const ScaffoldCustom()
    );
  }
}


class ScaffoldCustom extends StatelessWidget{
  const ScaffoldCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("basic 컴포넌트"),  // 화면의 제목을 설정하는 부분이다.
        leading: const Icon(Icons.backup), // 왼쪽에 표시될 위젯으로 일반적으로 뒤로가기 혹은 메뉴 버튼을 추가한다.
        elevation: 10.0,  // appBar의 그림자의 깊이를 설정한다.
        centerTitle: true, // 제목을 중앙에 배치할 것인지 여부를 결정한다.
        actions: [ // Appbar의 오른쪽 끝에 표시될 위젯 목록이다. 보통 아이콘 버튼이나 메뉴를 추가한다.
          Container(
            padding: const EdgeInsets.all(16.0),
            // Icon 위젯은 아이콘을 화면에 표시하기 위한 위젯이다.
            child: const Icon(Icons.favorite),
          )
        ],
      ),
      body: LayoutCombination(),
    );
  }

}