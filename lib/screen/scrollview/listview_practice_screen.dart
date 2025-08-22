import 'package:flutter/material.dart';

class ListviewPracticeScreen extends StatelessWidget {
  const ListviewPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> dataList = List.generate(30, (index) => index);

    return Scaffold(
      appBar: AppBar(title: const Text("실습")),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            color: index.isEven ? Colors.grey[300] : Colors.grey[400],
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              '${dataList[index]}',
              style: const TextStyle(fontSize: 20),
            ),
          ); // ← 세미콜론 필요
        },
      ),
    );
  }
}
