import 'package:flutter/cupertino.dart';

/*
* listView
* 스크롤 가능한 리스트를 생성하기 위한 위젯이다.
* 수직 또는 수평 방향으로 아이템을 나열할 수 있으며,
* 많은 양의 데이터를 효율적으로 표시하는데 유용한다.
*
* 주요 특징
* 1. 스크롤 기능 : 화면에 표시되는 공간을 초과할 경우 스크롤이 가능하다.
* 2. 동적 생성 : ListView.builder를 사용하면 아이템을 동적으로 생성할 수 있어 메모리 효율성 증가
* 3. 다양한 아이템 : 각 리스트 항목을 다양한 형태의 위젯으로 구성
*
* 주의 : 부모 위젯의 크기가 명확하게 설정되어 있지 않으면 레이아웃에 오류가 발생할 수 있다.
* */
class ListViewWidget extends StatelessWidget{
  
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
        width: 400,
      child: ListView(
        children: const [
          Text("단일 위젯")
        ],
      ),
    );
  }
}

class DynamicListView extends StatelessWidget{

  final List<String> items = List.generate(100, (index) => "아이템 $index");

  DynamicListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 400,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (context, index){
          return Text(items[index]);
        },
      ),
    );
  }
}