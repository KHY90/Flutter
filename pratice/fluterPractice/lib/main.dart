import 'package:fluter_practice/post/Menupost.dart';
import 'package:flutter/material.dart';
import 'menu/MenuList.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("커피 메뉴"),
          elevation: 10.0, // appBar의 그림자의 깊이를 설정한다.
          centerTitle: true, // 제목을 중앙에 배치할 것인지 여부를 결정한다.
          backgroundColor: Colors.pinkAccent,
        ),
        body:
        // const MenuListPage(),
        Menupost(),
      ),
    );
  }
}

class MenuListPage extends StatefulWidget {
  const MenuListPage({super.key});

  @override
  _MenuListPageState createState() => _MenuListPageState();
}

class _MenuListPageState extends State<MenuListPage> {
  List<int> menuItems = List.generate(10, (index) => index + 1); // 초기 리스트

  void removeMenuItem(int index) {
    setState(() {
      menuItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        return Menulist(
          onRemove: () => removeMenuItem(index),
        );
      },
    );
  }
}
