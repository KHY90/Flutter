import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:h_flutter_example_project/services/FavoriteService.dart';

class FavoriteViewModel extends ChangeNotifier{
  final FavoriteService _favoriteService;

  FavoriteViewModel(this._favoriteService);

  bool isFavorite(int index) {
    return _favoriteService.isFavorite(index);
  }

  void toggleFavorite(int index){
    _favoriteService.toggleFavorite(index);
    notifyListeners();
  }

  List<int> getFavoriteIndices(){
    return _favoriteService.getFavoriteIndices();
  }
}