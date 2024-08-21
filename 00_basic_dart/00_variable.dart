/*
  다트의 변수
  다트에서는 변수의 종류가 여러 가지 있으며, 각 변수는 특정 데이터 타입에 따라 다르게 사용된다.
  다트는 정적 타입 언어이지만, 타입 추론을 지원하여 변수의 타입을 명시하지 않고도 사용할 수 있다.
  주요 변수의 종류는 기본 타입, 컬렉션, 그리고 사용자 정의 타입으로 나눌 수 있다.
*/

// 1. 기본 데이터 타입
int age = 16;
double height = 17.5;
String name = "john";
bool isStudent = true;

// 2. 컬렉션
List<String> fruits = ['사과', '바나나', '오렌지']; // 배열처럼 사용
Map<String, int> scores = {"수학": 90, '영어': 100};
Set<int> uniqueNumbers = {
  1,
  2,
  3,
  4,
  5,
  1,
  2,
  3,
  4,
  5,
}; // set의 특징 : 중복값 제거함.

// 3. 사용자 정의 타입
class Car {
  String brand;
  String model;

  // 생성자
  // Car(this.brand, this.model);
  Car({required this.brand, required this.model});
}

// 프로그램 실행
void main() {
  // for (var item in fruits) {
  //   print(item);
  // }

  print("첫 번째 과일 : ${fruits[0]}");
  print("나이 : $age");
  Car mycar = Car(brand: "brand", model: "model");
  Car mycar2 = Car(model: "brand", brand: "model");

  print("$mycar는 ${mycar.brand}사의 ${mycar.model} 입니다.");
  print("$mycar는 ${mycar2.brand}사의 ${mycar2.model} 입니다.");
}
