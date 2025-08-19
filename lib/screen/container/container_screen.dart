import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container'),),
      body: Container(
        width: 350,
        height: 350,
        color: Colors.orange,

        alignment: Alignment.bottomCenter,

        padding: EdgeInsets.all(10),
        child: Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.red,

              borderRadius: BorderRadius.circular(15)
          ),
        ),
      ),

    );
  }
}