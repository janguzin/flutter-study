import 'package:flutter/material.dart';

class TextPracticeScreen extends StatelessWidget {
  const TextPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text"),
      ),
      body: Column(
        children: const [

          Text(
            "Text 위젯 실습입니다. 색상은 어쩌구 어쩌구 블라블라 집에 가고 싶어요 ",
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,

              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 1,
          ),

        ],
      ),
    );
  }
}
