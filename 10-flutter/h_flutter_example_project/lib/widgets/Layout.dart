import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/RootScreen.dart';

// 위젯 폴더에는 재사용이 가능한 애들 위주로 넣을 것

class Layout extends StatefulWidget{

  const Layout({super.key});

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout>{

  int _currentIndex = 0;

  void _onTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    const RootScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coffe Cards"),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.coffee),
              label: "favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "add"),
        ],
        currentIndex: _currentIndex,
        onTap: _onTapped,
      ),
    );
  }
}