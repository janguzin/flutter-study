import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/todo/todo_model.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {

  TextEditingController controller = TextEditingController();

  List<TodoModel> todoList = [
    TodoModel("산책", true),
    TodoModel("집가기", true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo")),
      body: Column(
        children: [
          Row(
            children: [
              /// 현재 주어진 영역의 빈 공간을 최대한 채우는 위젯
              Expanded(child: TextFormField(controller: controller)),
              TextButton(onPressed: () {
                /// todolist에 새로운 모델 추가
                /// 추가
                print(controller.text);
                var todoModel = TodoModel(controller.text, false);
                todoList.add(todoModel);
                setState(() {


                });
              }, child: Text("등록")),
            ],
          ),

          /// Column 안에 스크롤이 있는 위젯이 있는 경우
          /// 높이 값을 설정 해줘야 함.
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                var model = todoList[index]; // ← 여기만 수정

                /// 1. 체크박스를 선택 했을 때 checked 값을 변경하고 화면 갱신
                /// 2. 삭제 버튼을 클릭해서 클릭한 todoModel 제거
                return Row(
                  children: [
                    Checkbox(value: model.checked, onChanged: (value) {
                      setState(() {
                        model.checked = value!;

                        /// value는 Checkbox의 onChanged 콜백이 주는 값
                        /// 그래서 value가 true/false면 그대로 쓰고, null이면 false를 대신 대입
                      });
                    }),
                    Expanded(child: Text(model.name)),
                    IconButton(onPressed: () {
                      print("index: $index");
                      todoList.removeAt(index);
                      setState(() {

                      });
                      setState(() {
                        todoList.removeAt(index);
                      });
                    }, icon: Icon(Icons.delete)),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return Container(height: 2, color: Colors.grey);
              },
              itemCount: todoList.length,
            ),
          ),
        ],
      ),
    );
  }
}
