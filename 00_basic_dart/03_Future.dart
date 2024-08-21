/*
  Future
  Future는 다트에서 비동기 프로그래밍을 지원하기 위해서 제공되는 클래스이다.
  비동기 작업이 완료될 때까지 기다리지 않고 다른 작업을 수행할 수 있게 해주며,
  비동기 작업의 결과를 나중에 사용할 수 있도록 한다. Future는 주로 네트워크 요청,
  파일 I/O, 타이머 등 시간이 걸리는 작업에 사용된다.

  비동기 함수 : async 키워드로 정의된 함수에서 Future를 반환한다.
  결과 처리 : await를 사용하여 Future의 완료를 기다리거나, then 메서드를 사용하여 결과를 처리한다.
  오류 처리 : catchError 메서드를 통해 비동기 작업에서 발생한 오류를 처리할 수 있다.
  Future는 다트의 비동기 프로그래밍에서 중요한 역할을 하며, 사용자 경험을 향상시키는데 큰 도움이 된다.
  비동기 작업을 효율적으로 관리하고, 코드의 가독성을 높이는 데 기여한다.
*/

// 1. 비동기 함수 정의
import 'dart:ffi';

Future<String> fetchDate() async {
  // throw Exception("확인");
  await Future.delayed(Duration(seconds: 2));
  return "데이터 로그 완료";
}

void main() async {
  // String result = await fetchDate();
  // print(result);

  fetchDate().then((value) {
    print(value);
  }).catchError((error) {
    print("에러 발생함.");
    print(error);
  });
}
