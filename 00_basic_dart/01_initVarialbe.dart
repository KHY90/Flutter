// 1. 기본 초기화
int age = 25; // 정수형 변수 초기화
String name = "Alice"; // 문자열형 변수 초기화
bool isActive = false; // 불리언형 변수 초기화

// 2. 생성자를 통한 초기화
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() async {
  Person person = Person("Bob", age);
  print('${person.name}은 ${person.age}세 입니다.');

  // 3. null 안전성 초기화
  String?
      nullableStgring; // dart는 null 을 지원하지 않아서 ?를 붙여서 null 값이 들어와도 에러가 나지 않도록한다.
  print(nullableStgring);
  nullableStgring = 'hello';
  print(nullableStgring);
  print(person!.age); // ! 는 null 이 아니면 참조하겠다. null 이면 참조하지 않겠다.

  // late
  /*
    late 키워드는 다트에서 변수를 나중에 초기화할 수 있음을 나타내는 특수한 키워드이다.
    이는 변수가 선언된 후에 초기화될 것임을 명시하며, 초기화가 이루어지기 전에 변수를 사용하려고 하면 런타임 오류를 발생한다.
    late는 null 안정성을 유지하면서도 변수를 지연 초기화할 수 있는 유용한 방법이다.

    주로 복잡한 객체 생성 혹은 비동기 요청 이후 초기화를 위한 목적으로 사용된다.
  */

  late String description;
  // print(description); // 초기화가 되지 않아서 오류가 발생함.
  description = "나중에 초기화됨";
  print("late $description");

  late String data;
  // 비동기 요청이 완료된 후 <> 안에 들어있는 타입으로 반환한다. void 는 반환 안함.
  Future<void> fetchDate() async {
    await Future.delayed(Duration(seconds: 2));
    data = "데이터 초기화 완료";
  }

  await fetchDate();
  print("$data");
}
