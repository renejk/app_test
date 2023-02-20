import 'package:app_test/app/modules/ejercicio_1/widgets/calification_field.dart';
import 'package:app_test/app/modules/ejercicio_1/widgets/response.dart';
import 'package:app_test/app/utils/constants.dart';
import 'package:app_test/app/widgets/title.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ejercicio_1_controller.dart';

class Ejercicio1View extends GetView<Ejercicio1Controller> {
  const Ejercicio1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Calificaciones'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              TitleWidget(titleName: appConstants.ejercicio1),
              CalificationWidget(controller: controller),
              ResponseWidget(controller: controller)
            ],
          ),
        ));
  }
}
