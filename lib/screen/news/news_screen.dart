import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('news'),),


      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
        return Row(
          children: [
            Container(
                color: Colors.grey,height: 100,width: 100,
            ),

            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 8),
                Text('Text1',
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Text2',
                  maxLines: 2,
                ),
                Text('Text3 언론사 이름',
                  maxLines: 2,
                ),
                Text('Text4 날짜',
                  maxLines: 2,
                )

              ],
            ))

          ],


        );


      },),





    );
  }
}
