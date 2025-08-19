import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/container/container_screen.dart';
import 'package:smwu_202508/screen/container/container_practice_screen.dart';
import 'package:smwu_202508/screen/column/column_screen.dart';
import 'package:smwu_202508/screen/column/column_practice_screen.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  void _go(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () => _go(context, const ContainerScreen()),
                child: const Text('Container'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => _go(context, const ContainerPracticeScreen()),
                child: const Text('Container 실습'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => _go(context, const ColumnScreen()),
                child: const Text('Column'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => _go(context, const ColumnPracticeScreen()),
                child: const Text('Column 실습'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
