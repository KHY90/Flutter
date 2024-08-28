import 'dart:async';

import 'package:h_flutter_example_project/models/FavoriteItem.dart';
import 'package:hive/hive.dart';

class FavoriteService {
  final Box<FavoriteItem> _favoriteBox = Hive.box<FavoriteItem>("favoriteBox");


  bool isFavorite(int index) {
    return _favoriteBox!.values.any((item) => item.index == index);
  }

  void toggleFavorite(int index){
    FavoriteItem? favoriteItem;

    for(var item in _favoriteBox!.values){
      if(item.index == index){
        favoriteItem = item;
        break;
      }
    }

    if(favoriteItem != null){
      _favoriteBox!.deleteAt(_favoriteBox!.values.toList().indexOf(favoriteItem));
    }else{
      _favoriteBox!.add(FavoriteItem(index));
    }

  }

  List<int> getFavoriteIndices(){
    List<int> list = [];

    for(var item in _favoriteBox.values){
      list.add(item.index);
    }

    return list;
  }
}