import 'package:flutter/material.dart';
import 'package:g_provider_with_status_manager/modelandview/CounterViewModel.dart';
import 'package:g_provider_with_status_manager/view/NoneStateScreen.dart';
import 'package:g_provider_with_status_manager/view/ProviderScreen.dart';
import 'package:provider/provider.dart';

/*
* provider
* 플러터에서 상태 관리를 위한 인기 있는 패턴이자, 라이브러리로 간단하고 직관적인 api를 통해
* 애플리케이션의 상태를 효율적으로 관리할 수 있도록 해준다.
* provider는 플러터의, inheritedWidget을 기반으로 하고 있으며, 상태를 공유하고 위젯 트리에서
* 필요한 곳에서 쉽게 접근할 수 있도록 한다.
*
* 주요 기능
* 상태 관리 : provider는 애플리케이션의 상태를 관리하고, 상태가 변경될 때 ui를 자동으로 업데이트한다.
* 의존성 주입 : provider는 필요한 데이트를 위젯 트리에 주입하여, 하위 위젯들이 그 데이터에 접근할 수 있도록 하며
*            이 과정에서 코드의 재사용성과 유지 보수성이 향상된다.
* 구독 및 알림 : provider는 상태가 변경될 때 구독 중인 위젯에 자동으로 알림을 보내 ui를 갱신하게 된다.
*
* 플러터에서 인기있는 상태관리 패턴
*   1. Riverpod
*   2. Bloc 패턴
*   3. provider
* */
void main() {

  runApp(
    /*
    * ChangNotifierProvider
    * 플러터의 상태 관리 라이브러리인 provider에서 제공하는 클래스 중 하나로
    * changenotifier를 사용하는 상태 관리 패턴을 구현할 때 사용하게 된다.
    * 이 클래스는 상태를 관리하는 객체를 제공하고, 해당 객체에서 상태가 변경될 때 ui를 자동으로 업데이트 할 수 있도록 한다.
    *
    * 주요 특징
    * 1. 상태 관리
    *   ChangeNotifier를 상속받는 클래스를 사용하여 상태를 관리한다.
    *   이 클래스는 상태가 변경될 때 notifyListeners() 메서드를 호출하여 구독 중인 위젯에 알림을 보낸다.
    *
    * 2. 의존성 주입
    *   chageNotifierProvider를 사용하여 애플리케이션의 위젯 트리에 상태를 주입할 수 있다.
    *   이를 통해 하위 위젯들이 해당 상태에 접근할 수 있게 된다.
    *
    * 3. 자동 ui 업데이트 :
    *   chageNotifierProvider를 통해 상태가 변경되면
    *   이를 구독하고 있는 consumer 또는 Selecrtor와 같은 위젯이 자동으로 리렌더링 된다.
    * */
      ChangeNotifierProvider(
          create: (context) => CounterViewmodel(),
      child: MainApp())
  );
}

class MainApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Root()
    );
  }
}


class Root extends StatefulWidget {

  @override
  RootState createState() => RootState();
}

class RootState extends State<Root> {
  int _currenPage = 0;

  List<Widget> pages = [
    NoneStateScreen(),
    ProviderScreen(),
  ];

  void _onTap(int index){
    setState(() {
      _currenPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("counter")),
      body: pages[_currenPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.block),
              label: "상태 관리가 없는 화면"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.backup),
              label: "상태 관리"
          )
        ],
        currentIndex: _currenPage,
        onTap: _onTap,
      ),
    );
  }
}