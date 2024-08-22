import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowDialogWidget extends StatelessWidget{

  const ShowDialogWidget({super.key});

  void showAlertMessage(BuildContext context){
    showDialog(
        context : context,
        builder : (BuildContext context){
          return AlertDialog(
            title: const Text("알림"),
            content: const Text("이것은 알림 메세지 입니다."),
            actions: [
              TextButton(
                child: const Text("취소"),
                onPressed: (){
                  Navigator.of(context).pop(); // 현재의 대화 상자를 닫는다.
                }
              )
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text("알림 버튼"),
      onPressed: () => showAlertMessage(context),
    );
  }
}