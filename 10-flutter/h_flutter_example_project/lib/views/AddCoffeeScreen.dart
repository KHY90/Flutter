import 'package:flutter/material.dart';
import 'package:h_flutter_example_project/widgets/CameraWidget.dart';
import 'package:h_flutter_example_project/widgets/FormWidget.dart';
import 'package:provider/provider.dart';

import '../controllers/CoffeViewModel.dart';
// flutter pub add camera

class AddCoffeeScreen extends StatelessWidget {
  final _coffeeForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CoffeeViewModel>(context);

    return ListView(
      children: [
        Form(
            key: _coffeeForm,
            child: Center(
                child: Column(
                  children: [
                    CameraWidget(imagePath: viewModel.coffeeItem?.image,
                        setMethod: viewModel.setImage),
                    FormWidget(value: viewModel.coffeeItem?.title ?? "",
                        setValue: viewModel.setTitle),
                    FormWidget(value: viewModel.coffeeItem?.description ?? "",
                        setValue: viewModel.setDescription),
                    ElevatedButton(onPressed: () {
                      viewModel.saveForm(_coffeeForm, context);
                    }, child: const Text("저장"))
                  ],
                )
            )
        )
      ],
    );
  }
}