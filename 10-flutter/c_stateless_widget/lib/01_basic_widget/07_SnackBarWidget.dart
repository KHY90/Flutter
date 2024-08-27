import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget{

  const SnackBarWidget({super.key});

  void snackMessage(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: const Text("간단한 알림을 표시합니다."),
          action: SnackBarAction(
            label: "알림 내부 이벤트",
            onPressed: (){
              print("알림 중 이벤트 발생");
            },
          ),
        duration: const Duration(seconds : 3),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () => snackMessage(context),
          child: const Text("snack 표시"),
      ),
    );
  }
}