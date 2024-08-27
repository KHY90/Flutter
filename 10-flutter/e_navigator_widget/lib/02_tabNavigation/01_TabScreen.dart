import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../03_routerValue/01_PathValueScreen.dart';


/*
* TabBar & TabBarView
* 여러 탭을 사용하여 내용을 구분하고 쉽게 전환할 수 있도록 도와주는 위젯이다.
* 일반적으로 TabBar는 TabBarview와 함께 사용되어 각 탭에 해당하는 콘텐츠를 보여주게된다.
* 이를 통해 사용자 인터페이스를 깔끔하게 구성하고, 관련된 내용을 그대로 그룹화할 수 잇다.
*
* 주요 속성
* Tabs : 탭의 목록을 정의하는 속성으로, 일반적으로 Tab 위젯을 사용하여 각 탭을 설정한다.
* controller : TabController를 사용하여 탭의 상태를 관리한다. 이 컨트롤러는 탭의 선택 상태와 애니메이션을 관리한다.
* indicator : 현재 선택된 탭을 나타내는 인디케이터의 스타일을 설정한다.
* */
class TabScreen extends StatelessWidget{

  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("탭 예제"),
            bottom: const TabBar(
              indicatorColor: Colors.purple,
                tabs: [
                  Tab(icon: Icon(Icons.directions_car), child: Text("자동차"),),
                  Tab(icon: Icon(Icons.directions_train), child: Text("기차"),),
                  Tab(icon: Icon(Icons.directions_bike), child: Text("자전거"),),
                ]
            ),
            actions: [
              IconButton(onPressed: (){
                Navigator.pop(context);
                },
                  icon: const Icon(Icons.arrow_back)
              )
            ],
          ),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PathValueScreen(),
                          /*
                          * 네비게이션 시스템에서 라우트에 대한 설정 정보를 담고 있는 클래스이다.
                          * 이 클래스는 라우트의 이름과 추가적인 인자를 전달할 수 있도록 도와준다.
                          * 주로 라우트 생성할 때 사용되며, 해당 라우트의 상태와 정보를 관리하는데 유용하다.
                          *
                          * 주요 속성
                          * name : 라우트의 이름을 나타내는 문자열이다. 주로 라우트를 식별하거나 다른 라우트로 정보를 전달하는데 사용된다.
                          * arguments : 라우트에 전달할 추가적인 인자를 나타내며 특정 데이터나 라우트 간에 전달할 때 유용하다.
                          * */
                          settings: const RouteSettings(arguments: 1))
                      );
                    },
                      child: const Text("자동차 타고 PathValue 알아보기"))
                  ],
                ),
              ),
              Center(
                child:
                 Column(
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, "/query?name=${'이순신'}");
                      }, child: const Text("지하철 타고 단일 paramter 알아보기")),

                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, "/query?name=${'이순신'}&age=${1}");
                      }, child: const Text("다중 Parameter"))
              ],
                ),
              ),
                    const Center(
                      child: Text("자전거 페이지"),
              )
            ]
          ),
        ),
      ),
    );
  }
}