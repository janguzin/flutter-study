import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/statefull/inner_state.dart';

class StatefullScreen extends StatefulWidget {
  const StatefullScreen({super.key});

  @override
  State<StatefullScreen> createState() => _StatefullScreenState();
}

class _StatefullScreenState extends State<StatefullScreen> {

  int count = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Statefull"),),
      body: Column(
        children: [

          Text("count: $count"),
          TextButton(onPressed: () {
            count++;

            setState(() { // 얘로 화면 갱신 얘 없으면 숫자 증가 안됨

            });


          }, child: Text("Count up")),

          InnerState(count: count,)

        ],
      ),





    );

  }
}
