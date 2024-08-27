import 'package:hive/hive.dart';

part 'CoffeeItem.g.dart';
// flutter pub get
// flutter pub run build_runner build

@HiveType(typeId: 0)
class CoffeeItem{
  @HiveField(0)
  String? title;

  @HiveField(1)
  String? description;

  @HiveField(2)
  List<String>?  ingredients;

  @HiveField(3)
  String? image;

  CoffeeItem({required this.title,required this.description,required this.ingredients,required this.image});
  CoffeeItem.empty();

  // {"0":"제목 내용 리스트 이미지"}

  factory CoffeeItem.fromJson(Map<String, dynamic> json) {
    return CoffeeItem(
        title: json['title'],
        description: json['description'],
        // JSON 데이터 변환: ingredients 필드를 리스트로 변환할 때,
        // List<String>.from을 사용하여 JSON 데이터에서 가져온 리스트를 List<String>으로 안전하게 변환.
        ingredients: List<String>.from(json["ingredients"]), // List<String>으로 변환
        image: json["image"]
    );
  }

}