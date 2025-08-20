import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text"),
      ),
      body: Column(
        children: const [
          Text(
            "승무재경이 메이저다",
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
          Text(
            "아앙 창수재경",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "창수재경승무재경모브재경경원요한창수재경승무재경모브재경경원요한창수재경승무재경모브재경경원요한창수재경승무재경모브재경경원요한",
            style: TextStyle(
              color: Colors.red,
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
