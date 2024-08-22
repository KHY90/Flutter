import 'package:flutter/material.dart';

// flutter 어플리케이션의 진입점이 되는 메서드이다.
// vue에서 index.js와 같은 역할을 한다.
// 앞으로 애플리케이션의 설정을 main에서 처리하게 된다.
void main() {
  // 주어진 위젯 트리를 루트로 만든다. 즉, 앱의 실행 시점이다.
  runApp(const MainApp());
}

/*
* StatelessWidget
* flutter에서 상태가 없는 위젯을 정의할 때 사용하는 클래스로 'statelessWidget' 불변이며,
* 한번 생성되면 변경되지 않는 위젯이다. 또한 자체적으로 상태 관리를 하지 않는 것을 의미한다.
* */

class MainApp extends StatelessWidget {
  // 클래스 생성자는 super.key를 사용하여 부모 클래스인 StatelessWidget의 생성자를 호출한다.
  /*
  * super.key는 이 위젯의 키를 설정하며 키는 flutter 위젯의 고유하게 식별하는데 사용된다.
  * 이는 위젯 트리의 효율적인 업데이트와 상태 유지에 도움을 주게 되며 부모 클래스의 생성자를 호출함으로써
  * Myapp 위젯이 생성될 때 StatelessWidget의 기본 동작을 수행하게 된다.
  * */
  const MainApp({super.key});


  /*
  * build()
  * 위젯 트리를 구성하고 해당 트리를 기반으로 화면에 표시될 ui를 정의하는 메서드이다.
  * 위젯 트리 : 다른 위젯을 자식 위젯으로 포함하여 위젯 트리를 만든다. 이 트리는 flutter가 화면을 렌더링 하는데 사용된다.
  * ui 정의 : build 메서드는 반환된 위젯트리를 기반으로 화면에 표시될 ui를 정의한다. 다양한 위젯을 조합하여 원하는 레이아웃과 스타일 정의가 가능하다.
  * 상태 반영 :  StatefullWidget의 경우 상태가 변경되면 Build 메서드를 다시 호출하여 이를 통해 상태 변화가 되어 ui에 반영되도록한다.
  * */
  @override
  Widget build(BuildContext context) {
    /*
    * flutter 애플리케이션의 기본 구성 요소로, Material Design을 기반으로
    * 한 앱을 만드는데 사용된다. 이 위젯은 애플리케이션의 전반적인 테마, 라우팅, 기본 스타일 및 네비게이션을 관리한다.
    *
    * 주요 속성
    * title : 애플리케이션의 제목을 설정한다.(디바이스에 표시되는 이름)
    * theme : 앱의 기본 테마를 정의한다. 색상, 텍스트, 스타일 및 기타 스타일 속성 설정이 가능하다.
    * home : 애플리케이션의 기본 화면을 설정한다. 일반적으로 첫 번재 화면을 표시하는 위젯을 지정한다.
    * routers : 라우팅을 정의하는데 사용되며 키와 값이 쌍으로 화면을 정의하며 네비게이션을 쉽게 관리한다.
    * debugShowCheckModeBanner : 디버그 모드에서 체크 모드를 표시할지 여부를 설정한다.
    * */
    return MaterialApp(
        title: "my first App", // 애플리케이션의 이름이 된다.
        // meterialApp  테마를 정의하며 flutter에서 테마는 앱의 전반적인 시각적 스타일을 설정하는데 사용된다.
        theme:  ThemeData( // ThemeData 객체를 사용하여 앱의 색상, 글꼴 스타일, 앱바 스타일 등을 정의한다.
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true
        ),
        // 이는 앱의 루트 페이지를 설정하는데 사용된다.
        home: MyHomePage(title: "flutter app")
    );
  }
}


class MyHomePage extends StatelessWidget{

  MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("beautiful Flutter app"),
        ),
      ),
      body : DefaultTextStyle.merge(
          child: Center(
            child: Text(
              title,
              style: const TextStyle(fontSize: 24, color: Colors.pink),
            ),
          )
      ),

    );
  }
}






