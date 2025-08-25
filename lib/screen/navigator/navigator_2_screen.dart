import 'package:flutter/material.dart';

class Navigator2Screen extends StatefulWidget {
  const Navigator2Screen({super.key, required this.count});

  final int count;

  @override
  State<Navigator2Screen> createState() => _Navigator2ScreenState();
}

class _Navigator2ScreenState extends State<Navigator2Screen> {
  int count2 = 0;

  @override
  void initState() {
    super.initState();          // 보통 super를 먼저 호출
    count2 = widget.count;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('navi 2screen')),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 24),
          Text(count2.toString()),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              setState(() {
                count2 += 2;
              });
            },
            child: const Text('count up'),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              // 뒤로가기
              Navigator.pop(context, count2);
            },
            child: const Text('pop'),
          ),
        ],
      ),
    );
  }
}
