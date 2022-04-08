import 'package:base_app3/login/facebook.dart';
import 'package:base_app3/login/google.dart';
import 'package:base_app3/paginas/setup.dart';

import '/menu.dart';
import '/paginas/pagina1.dart';
import 'package:get/get.dart';

rotas() {
  return [
    GetPage(name: '/', page: () => const Menu()),
    GetPage(
        name: '/menu/', page: () => const Menu(), transition: Transition.zoom),
    GetPage(
        name: '/pagina1/',
        page: () => const Pagina1(),
        transition: Transition.zoom),
    GetPage(
        name: '/facebook/',
        page: () => const LoginFacebook(),
        transition: Transition.zoom),
    GetPage(
        name: '/google/',
        page: () => const LoginGoogle(),
        transition: Transition.zoom),
    GetPage(
        name: '/setup/',
        page: () => const Setup(),
        transition: Transition.zoom),
  ];
}
