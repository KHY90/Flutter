import 'package:hive/hive.dart';

part 'FavoriteItem.g.dart';

@HiveType(typeId: 1)
class FavoriteItem{

  @HiveField(0)
  final int index;

  FavoriteItem(this.index);

  @override
  String toString() {
    return index.toString();
  }

}