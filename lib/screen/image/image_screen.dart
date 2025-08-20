import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image"),),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              color: Colors.grey,
              width: 150,
              height: 150,
              child: Image.network('https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png'),
              alignment: Alignment.topLeft,
            )
          ],
        ),
      ),
    );
  }
}