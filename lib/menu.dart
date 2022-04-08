import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Inicial'),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed("/setup/");
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            ElevatedButton(
//              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed("/pagina1/");
              },
              child: const Text('Pagina 1'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
//              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed("/google/");
              },
              child: const Text('Login Google'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
//              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed("/facebook/");
              },
              child: const Text('Login Facebook'),
            ),
          ],
        ),
      ),
    );
  }
}
