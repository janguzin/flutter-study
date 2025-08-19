import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('column'),),

      body: Container(
        width: 300,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100, height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100, height: 100,
              color: Colors.red,
            ),
            Container(
              width: 100, height: 100,
              color: Colors.green,
            ),
          ],

        ),
      ),
    );
  }
}
