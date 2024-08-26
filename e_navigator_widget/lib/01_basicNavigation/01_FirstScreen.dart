import 'package:e_navigationbar_widget/00_common/ScaffoldWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../02_tabNavigation/01_TabScreen.dart';

class FirstScreen extends StatelessWidget{

  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
        widget: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("첫 번째 페이지 입니다."),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "/second");
              },
               child: const Text("페이지 이동")),

              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "/bottom");
              }, child: Text("bottom 이동"))
            ],
          ),
        )
    );
  }
}

/*
* Material Page Route
* 네비게이션 시스템에서 사용되는 기본적인 라우트 클래스 중 하나이다.
* 이 클래스를 사용하면 새로운 화면으로 전환할 때 Material 디자인의 페이지 전환 애니메이션을 제공한다.
*
* 주요 속성
* builder : 새로운 화면을 생성하는 함수이다. 이 함수는 buildContext를 매개변수로 받아 새로운 위젯을 반환한다.
* settings : 라우트의 설정 정보를 담고 있는 객체로 라우트의 이름이나 인자를 전달할 때 사용할 수 있다.
* */
class SecondScreen extends StatelessWidget{

  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(widget:
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("두 번째 페이지 입니다."),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          },
              child: const Text("뒤로가기")),
          ElevatedButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TabScreen())    
            );
          },
              child: const Text("tab 이동"))
        ],
      ),
    ));
  }
}