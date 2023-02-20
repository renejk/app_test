import 'package:app_test/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu ejercicios'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.EJERCICIO_1),
            child: const SizedBox(
                width: 80, child: Center(child: Text('Ejercicio 1'))),
          ),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.EJERCICIO_1_2),
            child: const SizedBox(
                width: 80, child: Center(child: Text('Ejercicio 1,2'))),
          ),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.EJERCICIO_2),
            child: const SizedBox(
                width: 80, child: Center(child: Text('Ejercicio 2'))),
          ),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.EJERCICIO_3),
            child: const SizedBox(
                width: 80, child: Center(child: Text('Ejercicio 3'))),
          ),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.EJERCICIO_4),
            child: const SizedBox(
                width: 80, child: Center(child: Text('Ejercicio 4'))),
          ),
        ]),
      ),
    );
  }
}
