import 'package:flutter/material.dart';

class ScrollviewScreen extends StatelessWidget {
  const ScrollviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ScrollView"),),
      body: SizedBox(
        width: 200,
        height: 1000000,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 50),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Text("재경아"),
              SizedBox(width: 30),
              Text("재경아"),
              SizedBox(width: 20),
              //SizedBox(height: 20),
              Text("재경아"),
              SizedBox(width: 20),
              //SizedBox(height: 20),
              Text("재경아"),
              SizedBox(width: 20),
              //SizedBox(height: 20),
              Text("재경아"),
              SizedBox(width: 20),
              //SizedBox(height: 20),
              Text("창수야"),
              SizedBox(width: 20),
              //SizedBox(height: 20),
              Text("창수야"),
              SizedBox(width: 20),
              //SizedBox(height: 20),
              Text("창수야"),
              //SizedBox(height: 20),
              Text("창수야"),
              //SizedBox(height: 20),
              Text("재경아"),
              //SizedBox(height: 20),
              Text("재경아"),
              //SizedBox(height: 20),
              Text("재경아"),
              //SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
