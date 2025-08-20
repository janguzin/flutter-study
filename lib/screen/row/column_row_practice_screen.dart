import 'package:flutter/material.dart';
//stl 단축키
class ColumnRowPracticeScreen extends StatelessWidget {
  const ColumnRowPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container 실습")),
      body: Container(
        width: 450,
        height: 450,
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 첫 번째 줄
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 100, height: 100, color: Colors.blue),
                Container(width: 100, height: 100, color: Colors.red),
                Container(width: 100, height: 100, color: Colors.green),
              ],
            ),
            const SizedBox(height: 20), // 줄 간격
            // 두 번째 줄
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 100, height: 100, color: Colors.blue),
                Container(width: 100, height: 100, color: Colors.red),
                Container(width: 100, height: 100, color: Colors.green),
              ],
            ),
            const SizedBox(height: 20), // 줄 간격
            // 두 번째 줄
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: [
                  Container(width: 50, height: 50, color: Colors.green),
                  Container(width: 50, height: 50, color: Colors.orange),
                ]),
                Column(children: [
                  Container(width: 50, height: 50, color: Colors.orange),
                  Container(width: 50, height: 50, color: Colors.green),
                ]),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
