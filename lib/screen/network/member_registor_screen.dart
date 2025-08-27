import 'package:flutter/material.dart';

class MemberRegistorScreen extends StatefulWidget {
  const MemberRegistorScreen({super.key});

  @override
  State<MemberRegistorScreen> createState() => _MemberRegistorScreenState();
}

class _MemberRegistorScreenState extends State<MemberRegistorScreen> {

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
          ElevatedButton(onPressed: () {

          }, child: Text('등록')),

        ],
      ),




    );
  }
}
