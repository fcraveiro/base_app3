import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFacebook extends StatefulWidget {
  const LoginFacebook({Key? key}) : super(key: key);

  @override
  State<LoginFacebook> createState() => _LoginFacebookState();
}

class _LoginFacebookState extends State<LoginFacebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Facebook'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed("/setup/");
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Container(
        width: 200,
        height: 200,
        color: Colors.red,
      ),
    );
  }
}
