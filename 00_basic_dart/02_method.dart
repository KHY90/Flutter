/*
  함수 선언문은 특정 작업을 수행하는 코드 블록을 정의하는 방법이다.
  다트에서 함수가 일급 시민(first-class citizen)으로 취급되며,
  변수를 통해 함수에 대한 참조를 저장하거나, 다른 함수의 인자로 전달할 수 있다.
  함수는 입력(매개변수)를 받아서 출력(반환값)을 생성할 수 있으며, 다양한 형태로 선언할 수 있다.

  일급 시민
  함수가 다른 데이터 타입과 동일한 취급을 받는 다는 것을 의미한다.
  즉, 함수는 변수에 저장할 수 있고, 인자로 전달할 수 있으며,
  다른 함수의 반환값으로 사용할 수 있다.
 */

// 1. 기본 함수 선언 : 인자와 반환값이 있는 함수 선언
int add(int a, int b) {
  return a + b;
}

// 2. 반환 값이 없는 함수 : 반환값이 없는 void 함수 선언
void printGreeting(String name) {
  print("안녕, $name");
}

// 3. 옵셔널 매개변수 : 기본값을 가지거나 선택적으로 받을 수 있는 매개변수 사용.
void greet(String name, [String? greeting = "안녕하세요"]) {
  print("$greeting, $name!");
}

// 4. 익명 함수 : 이름이 없는 함수를 선언하여 사용.
var multiply = (int a, int b) {
  return a * b;
};

Function method = (int a, int b) {
  return a * b;
};

// 5. 함수를 변수에 저장
// String test = multiply; // 타입이 맞지 않음.
Function copyFun = multiply;
var copy2 = multiply;

// 6. 함수를 다른 함수의 인자로 전달
void execueFunction(int Function(int, int) func) {
  int result = func(3, 4);
  print("결과 $result");
}

// 7. 함수를 반환
int Function(int, int) getFunction() {
  return add; // add 함수는 1번에 정의되어 있음
}

// 프로그램의 실행 부분
void main() {
  // 함수 호출 예시
  print("6 + 4 = ${add(6, 4)}"); // 1번 함수 호출
  printGreeting("홍길동"); // 2번 함수 호출
  greet("이순신"); // 3번 함수 호출 선택적 매개변수를 전달하지 않음.
  greet("이순신", "잘가세요!"); // 3번 함수 호출 선택적 매개변수를 전달함.
  //greet(); // 3번 함수 호출 에러 name의 매개변수는 선택적 매개변수가 아니기 때문에 오류 발생.
  print("4*5 = ${multiply(4, 5)}"); // 4번 익명 함수 호출 (return 값이 출력된다.)
  execueFunction(multiply); // 4번에 정의되어 있는 함수를 매개변수로 받아 실행한다.
  execueFunction(add); // 4번에 정의되어 있는 함수를 매개변수로 받아 실행한다.

  var returnedFunction = getFunction();
  print("10 + 20 = ${returnedFunction(10, 20)}"); // 출력 : 10 + 20 = 30
}
