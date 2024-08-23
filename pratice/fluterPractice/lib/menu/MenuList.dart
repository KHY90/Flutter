import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menulist extends StatefulWidget {
  final VoidCallback onRemove;

  const Menulist({super.key, required this.onRemove});

  @override
  _MenulistState createState() => _MenulistState();
}

class _MenulistState extends State<Menulist> {
  bool isFavorite = false; // 즐겨찾기 상태를 나타내는 변수

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite; // 상태를 반전시켜 아이콘을 변경
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0.1), // 위아래 여백 조정
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // 검정색 테두리
          width: 2.0, // 2px 두께
          style: BorderStyle.solid, // 실선
        ),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0), // 왼쪽 여백 추가
            child: Text("1번"),
          ),
          const SizedBox(width: 10), // 작은 간격 추가
          const Image(
            image: NetworkImage(
                "https://cdn.paris.spl.li/wp-content/uploads/211001_%EB%B9%85%EC%95%84%EC%9D%B4%EC%8A%A4%EC%95%84%EB%A9%94%EB%A6%AC%EC%B9%B4%EB%85%B8-1280.jpg"),
            width: 100,
            height: 200,
          ),
          const SizedBox(width: 10), // 작은 간격 추가
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "아메리카노", // 상품 이름
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4), // 간격 조정
                Text(
                  "좋아 좋아 좋아", // 상품 설명
                  maxLines: 2, // 최대 2줄
                  overflow: TextOverflow.ellipsis, // 넘칠 경우 생략 부호 추가
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    size: 24.0,
                    color: isFavorite ? Colors.red : Colors.grey,
                    semanticLabel: "favorite Icon",
                  ),
                  onPressed: toggleFavorite, // 아이콘을 누를 때 실행할 함수
                ),
                const SizedBox(width: 30), // 아이콘 간의 간격 추가
                Padding(
                  padding: const EdgeInsets.only(right: 16.0), // 오른쪽 여백 추가
                  child: IconButton(
                    icon: const Icon(
                      Icons.cancel_outlined,
                      size: 24.0,
                      color: Colors.black,
                      semanticLabel: "cancel Icon",
                    ),
                    onPressed: widget.onRemove, // 아이콘을 누를 때 호출할 함수
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
