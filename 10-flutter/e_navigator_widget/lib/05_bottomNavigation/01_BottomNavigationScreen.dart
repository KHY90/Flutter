import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget{

  @override
  BottomNavigationState createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNavigationScreen>{

  int _currentIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = const [
    Center( child: Text("home")),
    Center( child: Text("Serch")),
    Center( child: Text("profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("botom Navigation Bar"),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar : BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label : "홈"
        ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
            label : "검색"
        ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
            label : "프로필"
        ),
      ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      )
    );
  }
}