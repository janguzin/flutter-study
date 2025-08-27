import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/column/column_practice_screen.dart';
import 'package:smwu_202508/screen/column/column_screen.dart';
import 'package:smwu_202508/screen/container/container_practice_screen.dart';
import 'package:smwu_202508/screen/container/container_screen.dart';
import 'package:smwu_202508/screen/future/future_screen.dart';
import 'package:smwu_202508/screen/image/image_screen.dart';
import 'package:smwu_202508/screen/navigator/navigator_screen.dart';
import 'package:smwu_202508/screen/network/network_screen.dart';
import 'package:smwu_202508/screen/news/news_screen.dart';
import 'package:smwu_202508/screen/row/column_row_practice_screen.dart';
import 'package:smwu_202508/screen/row/row_screen.dart';
import 'package:smwu_202508/screen/scrollview/listview_builder_screen.dart';
import 'package:smwu_202508/screen/scrollview/listview_practice_screen.dart';
import 'package:smwu_202508/screen/scrollview/listview_screen.dart';
import 'package:smwu_202508/screen/scrollview/scrollview_screen.dart';
import 'package:smwu_202508/screen/stack/stack_practice_screen.dart';
import 'package:smwu_202508/screen/stack/stack_screen.dart';
import 'package:smwu_202508/screen/statefull/statefull_screen.dart';
import 'package:smwu_202508/screen/text/text_practice_screen.dart';
import 'package:smwu_202508/screen/text/text_screen.dart';
import 'package:smwu_202508/screen/todo/todo_screen.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ContainerScreen();
                    },
                  ),
                );
              },
              child: Text("Container"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ContainerPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("Container 실습"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColumnScreen();
                    },
                  ),
                );
              },
              child: Text("Column"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColumnPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("Column 실습"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RowScreen();
                    },
                  ),
                );
              },
              child: Text("Row"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColumnRowPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("RowColumn 실습"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TextScreen();
                    },
                  ),
                );
              },
              child: Text("text 실습"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TextPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("text practice 실습"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ImageScreen();
                    },
                  ),
                );
              },
              child: Text("Image"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StackScreen();
                    },
                  ),
                );
              },
              child: Text("Stack"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StackPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("Stack 실습"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ScrollviewScreen();
                    },
                  ),
                );
              },
              child: Text("Scroll view"),
            ),
            SizedBox(height: 10),
            button(context, ListviewScreen(), "ListView"),
            SizedBox(height: 10),
            button(context, ListviewBuilderScreen(), "ListviewBuilder"),
            SizedBox(height: 10),
            button(context, ListviewPracticeScreen(), "Listview 실습"),
            SizedBox(height: 10),
            button(context, StatefullScreen(), "Statefull"),
            SizedBox(height: 10),
            button(context, NavigatorScreen(), "navi screen"),
            SizedBox(height: 10),
            button(context, TodoScreen(), "todo screen"),
            SizedBox(height: 10),
            button(context, NetworkScreen(), "network screen"),
            SizedBox(height: 10),
            button(context, FutureScreen(), "future screen"),
            SizedBox(height: 10),
            button(context, NewsScreen(), "news screen")

          ],
        ),
      ),
    );
  }

  Widget button(BuildContext context, Widget child, String name) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return child;
            },
          ),
        );
      },
      child: Text(name),
    );
  }
}