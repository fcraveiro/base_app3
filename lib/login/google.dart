import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginGoogle extends StatefulWidget {
  const LoginGoogle({Key? key}) : super(key: key);

  @override
  State<LoginGoogle> createState() => _LoginGoogleState();
}

class _LoginGoogleState extends State<LoginGoogle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Google'),
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
        color: Colors.blue,
      ),
    );
  }
}
