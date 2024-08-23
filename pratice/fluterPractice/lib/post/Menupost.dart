import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menupost extends StatelessWidget {
  const Menupost({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: MenuState(),
    );
  }
}

class MenuState extends StatefulWidget {
  @override
  FormStatus createState() => FormStatus();
}

class FormStatus extends State<MenuState> {
  String? subject;
  String? contents;
  final _formKey = GlobalKey<FormState>();

  // 제목과 내용을 저장하는 리스트
  List<Map<String, dynamic>> savedItems = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormFieldWidget(
              label: "제목을 입력하세요.",
              inputText: subject,
              option: false,
              onSaved: (value) {
                subject = value;
              }),
          TextFormFieldWidget(
              label: "내용을 입력하세요.",
              inputText: contents,
              option: false,
              onSaved: (value) {
                contents = value;
              }),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                setState(() {
                  // 저장된 제목과 내용을 리스트에 추가
                  savedItems.add({
                    'subject': subject ?? '',
                    'contents': contents ?? '',
                    'isFavorite': false, // 초기 상태는 즐겨찾기 아님
                  });
                });
              }
            },
            child: const Text("저장"),
          ),
          const SizedBox(height: 20),
          // 저장된 제목과 내용을 출력
          ...savedItems.asMap().entries.map((entry) {
            int index = entry.key;
            Map<String, dynamic> item = entry.value;
            return Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "제목: ${item['subject']}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "내용: ${item['contents']}",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          item['isFavorite'] ? Icons.favorite : Icons.favorite_border,
                          size: 24.0,
                          color: item['isFavorite'] ? Colors.red : Colors.grey,
                          semanticLabel: "favorite Icon",
                        ),
                        onPressed: () {
                          setState(() {
                            item['isFavorite'] = !item['isFavorite']; // 상태 반전
                          });
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.cancel_outlined,
                          size: 24.0,
                          color: Colors.black,
                          semanticLabel: "cancel Icon",
                        ),
                        onPressed: () {
                          setState(() {
                            savedItems.removeAt(index); // 항목 삭제
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

class TextFormFieldWidget extends StatelessWidget {
  final String label;
  final String? inputText;
  final bool option;
  final Function(String?)? onSaved;

  const TextFormFieldWidget({
    required this.label,
    this.inputText,
    this.option = false,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: option,
      decoration: InputDecoration(labelText: label),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "$label을 입력해주세요";
        }
        return null;
      },
      onSaved: onSaved,
    );
  }
}
