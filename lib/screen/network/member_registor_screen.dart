import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


class MemberRegistorScreen extends StatefulWidget {
  const MemberRegistorScreen({super.key});

  @override
  State<MemberRegistorScreen> createState() => _MemberRegistorScreenState();
}

class _MemberRegistorScreenState extends State<MemberRegistorScreen> {
  Dio dio = Dio(BaseOptions(baseUrl: "https://0f5d227aa566.ngrok-free.app"));

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('멤버 등록'),),
      body: Column(
        children: [
          TextFormField(controller: emailController,),
          TextFormField(controller: passwordController,),
          ElevatedButton(onPressed: () async {
            await dio.post('/api/v1/member', data:{
              'email' : emailController.text,
              'password' : passwordController.text,

            });
            Navigator.pop(context, true);


          }, child: Text('등록')),

        ],
      ),




    );
  }
}
