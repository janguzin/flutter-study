import 'package:flutter/material.dart';

class InnerState extends StatefulWidget {
  const InnerState({super.key, required this.count}); // 보통 key를 앞에 둡니다.

  final int count;

  @override
  State<InnerState> createState() => _InnerStateState();
}

class _InnerStateState extends State<InnerState> {
  int innerCount = 0;

  // initState는 한 번만 호출
  @override
  void initState() {
    super.initState();
    innerCount = widget.count;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(innerCount.toString()),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: () {
            setState(() {
              innerCount++;
            });
          },
          child: const Text('inner count up'),
        ),
      ],
    );
  }
}
