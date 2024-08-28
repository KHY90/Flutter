
import 'package:flutter/cupertino.dart';
import 'package:h_flutter_example_project/controllers/FavoriteViewModel.dart';
import 'package:h_flutter_example_project/models/CoffeeItem.dart';
import 'package:h_flutter_example_project/widgets/CoffeeWidget.dart';
import 'package:provider/provider.dart';

import '../controllers/CoffeViewModel.dart';

class FavoriteCoffeeListScreen extends StatelessWidget{

  FavoriteCoffeeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteViewModel = Provider.of<FavoriteViewModel>(context);
    final coffeeViewModel = Provider.of<CoffeeViewModel>(context);

    List<int> favoriteIndices = favoriteViewModel.getFavoriteIndices();
    List<CoffeeItem> favoriteItems = favoriteIndices.map((index) => coffeeViewModel.coffeeItems[index-1]).toList();

    return ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index){
          final coffeeItem = favoriteItems[index];
          return CoffeeWidget(coffeeItem: coffeeItem, index: favoriteIndices[index]);
        }
    );

  }
}