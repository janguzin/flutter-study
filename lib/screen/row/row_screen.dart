import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row"),),
      body: Container(
        height: 300,
        width: 300,
        color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(width: 100, height: 100, color: Colors.blue,),
            Container(width: 100, height: 100, color: Colors.red,),
            Container(width: 100, height: 100, color: Colors.green,),
          ],
        ),
      ),
    );
  }
}
