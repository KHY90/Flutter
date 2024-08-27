import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* 상태 관리를 사용하지 않는면 다음과 같은 문제점을 확인할 수 있다.
* 1. ui 일관성 부족
* 상태가 변경디었음에도 불구하고 ui가 적절하게 업데이트되지 않을 수 있다. 이로 인해 사용자는 잘못된 정보를 보거나
* 예기치 않은 동작을 경험할 수 있다.
*
* 2. 복잡한 코드 구조
* 상태 관리를 제대로 하지 않으면, 코드가 복잡해지고 가독성이 떨어지게 된다.
* 상태 관련 로직이 분산되어 여러 곳에 흩어져 있을 수 있으며 이를 추적하고 수정하기가 어려워진다.
*
* 3. 재사용성 저하
* 상태 관리가 제대로 이루어지지 않으면 컴포넌트 간의 의존성이 증가하여 코드의 재사용성이 떨어지게된다.
* 특정 상태를 공유하기 위해 여러 위젯에서 같은 로직을 반복해야할 수 있다.
*
* 4. 성능 저하
* 상태 변화에 따른 불필요한 리렌더링이 발생할 수 있으며, 상태 관리가 없다면, 모든 위젯이 매번 전체적으로 다시 그려질 수 있어
* 성능에 부정적인 영향을 미칠 수 있다.
*
* 5. 버그 발생 가능성
* 상태 관리를 소흘히 하면 예기치 않은 버그가 발생할 가능성이 높으며 상태 변화가 예상대로 이루어지지 않거나
* 특정 조건에서 잘못된 동작을 유발할 수 있다.
*
* 6. 상태 추적의 어려움
* 애플리케이션의 상태가 복잡해질수록, 상태 변화를 추적하고 디버깅하기가 어려워진다.
* 상태 관리가 없다면, 로그를 통해 상태 변화를 일일이 확인해야 할 수 있다.
*
* 7. 테스트의 어려움
* 상태 관리가 부실하면, 단위 테스트와 통합 테스트를 수행하기가 어려워진다.
* 상태가 명확히 정의되지 않거나, 상태 변경이 예측 불가능해지면 테스트의 신뢰성이 떨어진다.
*
* 효율적인 상태 관리는 애플리케이션의 안정성과 유지보수성을 높이는데 매우 중요하다.
* 상태를 적절히 관리하지 않으면 여러 문제를 초래할 수 있으며, 이는 사용자 경험에도 부정적인 영향을 미칠 수 있다.
* 따라서 flutter와 같은 프레임워크에서는 상태 관리 패턴이나 라이브러리를 활용하여 상태를 체계적으로 관리하는 것이 권장된다.
* */

class NoneStateScreen extends StatefulWidget{


  @override
  _NoneState createState() => _NoneState();
}

class _NoneState extends State<NoneStateScreen>{
  int _count = 0;

  void increment(){
    setState(() {
      _count++;
    });
  }

  void decrement(){
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("-----------------------");
    print("상태 관리를 하지 않는 경우");
    print("-----------------------");

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _NonText(_count),
          SizedBox(height: 20),
          ElevatedButton(onPressed: increment, child: const Text("증가")),
          ElevatedButton(onPressed: decrement, child: const Text("감소")),
        ],
      ),
    );
  }
}

class _NonText extends StatelessWidget{
  int? _count;

  _NonText(this._count);

  @override
  Widget build(BuildContext context) {
    print("-----------------------");
    print("_NonText");
    print("-----------------------");

    return Text(
      "Couter : $_count",
      style: const TextStyle(fontSize: 24),
    );
  }
}