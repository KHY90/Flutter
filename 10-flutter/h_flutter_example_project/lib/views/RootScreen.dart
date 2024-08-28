import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:h_flutter_example_project/models/CoffeeItem.dart';
import 'package:h_flutter_example_project/widgets/CoffeeWidget.dart';
import 'package:provider/provider.dart';

import '../controllers/CoffeViewModel.dart';

class Rootscreen extends StatefulWidget {
  const Rootscreen({super.key});

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Rootscreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<CoffeeViewModel>(context, listen: false).fetchCoffeeItems();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeViewModel>(builder: (context, viewModel, child) {
      return Container(
        color: Colors.white,
        child: ListView.builder(
            itemCount: viewModel.coffeeItems.length,
            itemBuilder: (context, index) {
              final coffeeItem = viewModel.coffeeItems[index];
              return CoffeeWidget(coffeeItem: coffeeItem, index: index + 1);
            }),
      );
    });
  }
}