import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_provider_with_status_manager/modelandview/CounterViewModel.dart';
import 'package:provider/provider.dart';

/*
* 상태 관리의 주요 이점
*
* 1. ui 일관성 유지
* 상태 관리 시스템을 사용하면 상태가 변경될 때 ui가 자동으로 업데이트된다.
* 이를 통해 사용자에게 항상 최신 정보를 제공하고, 일관된 사용자 경험을 유지할 수 있게된다.
*
* 2. 코드 가독성 향상
* 상태 관련 로직이 명확하게 분리되어 코드의 가독성이 높아진다.
* 상태 관리 패턴을 활용하면, 상태 변경과 관련된 코드가 모듈화되어 유지보수와 이해가 쉬워진다.
*
* 3. 재사용성 증가
* 상태를 중앙 집중식으로 관리하면, 여러 컴포넌트가 동일한 상태를 손쉽게 공유할 수 있다.
* 이는 코드의 재사용성을 높이고, 중복 코드를 줄이는데 기여한다.
*
* 4. 성능 최적화
* 상태 관리 시스템은 상태 변화에 따라 필요한 부분만 리렌더링하도록 최적화 할 수 있다.
* 이를 통해 성능을 향상 시키고, 불필요한 리렌더링을 방지할 수 있다.
*
* 5. 버그 감소 == 테스트 코드 작성 관련 내용
* 명확한 상태 관리 시스템은 상태 변화의 예측 가능성을 높이고, 버그를 줄이는데 도움을 준다.
* 상태 변화가 명확하게 정의 되면, 개발자는 문제를 더 쉽게 추적하고 수정할 수 있다.
*
* 6. 상태 추적 용이
* 상태 관리 시스템은 애플리케이션의 상태 변화를 쉽게 추적할 수 있도록 도와준다.
* 이를 통해 디버깅이 수월해지고, 애플리케이션의 동작을 이해하는데 큰 도움이 된다.
*
* 7. 테스트 용이성
* 상태 관리가 체계적으로 이루어지면 각 상태와 관련된 로직을 독립적으로 테스트할 수 잇다.
* 이는 테스트의 신뢰성을 높이고, 앱의 품질을 개선하는데 기여한다.
*
* 8. 협업 용이
* 여러 개발자가 함께 작업할 때, 명확한 상태 관리 체계는 코드의 일관성을 유지하고, 팀원 간으 ㅣ협업을 용이하게 한다.
* 각자가 상태 관리 규칙을 이해하고 따르면 작업의 효율성이 증가된다.
* */

/*
* Consumer
* 주로 상태 관리 라이브러리인 Provider 패턴에서 사용되는 위젯이다.
* consumer는 특정 상태를 구독하고, 해당 상태가 변경될 때 ui를 자동으로 업데이트하는 역할을 한다.
* 이를 통해 상태 변경에 따른 ui 반응을 쉽게 구현할 수 있다.
*
* consumer의 주요 특징
* 1. 상태 구독
* consumer는 주어진 상태를 구독하며, 해당 상태가 변경될 때 마다 필요한 부분만 리렌더링한다.
* 이를 통해 효율적인 ui 업데이트가 가능하다.
*
* 2. 제네릭 타입
* consumer는 제네릭 타입을 사용하여 구독할 상태의 타입을 명시할 수 있다.
* 예를 들어 Consumer<CounterViewModel>과 같이 사용하면 counterViewModel 타입의 상태를 구독하게 된다.
*
* 3. 간편한 사용
* consumer 위젯은 컨텍스트 내에서 상태를 쉽게 접근할 수 있도록 해준다.
* 이를 통해 상태에 기반한 ui를 쉽게 구성할 수 있다.
*
* 참고 : Consumer는 상태 변경을 구독하는 방식으로 재귀호출을 막을 수 있는 효과가 있다.
*
* 상태를 구독하기 위해서는 runApp에서 changeNotifierProvider를 사용하여 상태를 제공해야한다.
* */
class ProviderScreen extends StatelessWidget{

 const ProviderScreen({super.key});

 @override
  Widget build(BuildContext context) {
   print("----------------------");
   print("상태 관리를 하는 경우");
   print("----------------------");

   return Center(
     child: Consumer<CounterViewmodel>(
      child: _ProviderText(),
      // builder : 상태를 구독할 때 호출되는 함수이다.
      // context : 현재 BuildContext를 나타내며, 위젯 트리에 접근하는데 사용된다.
      // counterViewModel : 구독하고 있는 상태 객체를 나타낸다. 여기서는 counterViewModel의 인스턴스이다.
      // child : 위젯 트리에서 재사용할 수 잇는 자식 위젯이다. 이 매개변수는 성능 최적화를 위해 사용된다.
      builder: (context, counterViewModel, child){
       return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         child ?? Text("null"),
         const SizedBox(height: 20,),
         ElevatedButton(onPressed: counterViewModel.increment, child: Text("증가")),
         ElevatedButton(onPressed: counterViewModel.decrement, child: Text("감소")),
        ],
       );
      },
     ),
   );
  }
}

class _ProviderText extends StatelessWidget{

 @override
  Widget build(BuildContext context) {
  print("----------------------");
  print("_ProviderText");
  print("----------------------");

  final counterViewModel = Provider.of<CounterViewmodel>(context);

  return Text(
   "Counter : ${counterViewModel.count}",
   style: const TextStyle(fontSize: 24),
   );
  }
}