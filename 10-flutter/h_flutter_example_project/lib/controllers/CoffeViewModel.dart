import 'package:flutter/foundation.dart';
import 'package:h_flutter_example_project/models/CoffeeItem.dart';
import 'package:h_flutter_example_project/services/CoffeeService.dart';
import '../services/CoffeeService.dart';

class CoffeeViewModel extends ChangeNotifier{
  List<CoffeeItem> _coffeeItems = [];
  List<CoffeeItem> get coffeeItems => _coffeeItems;

  final CoffeeService _coffeeService;

  CoffeeViewModel(this._coffeeService){
    _initializeHive();
  }

  Future<void> _initializeHive() async{
    await _coffeeService.initializeHive();
    await fetchCoffeeItems();
  }

  Future<void> fetchCoffeeItems() async{
    _coffeeItems = await _coffeeService.fetchCoffeeItems();
    notifyListeners();
  }

}