import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatelessWidget {
  const ListviewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> dataList = ["a", "b", "a", "a"];
    return Scaffold(appBar: AppBar(title: Text("Listview Builder"),),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return Text(dataList[index]);

      },),

    );
  }
}
