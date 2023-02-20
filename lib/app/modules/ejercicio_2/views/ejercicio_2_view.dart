import 'package:app_test/app/modules/ejercicio_2/widgets/input_field.dart';
import 'package:app_test/app/modules/ejercicio_2/widgets/response.dart';
import 'package:app_test/app/utils/constants.dart';
import 'package:app_test/app/widgets/title.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ejercicio_2_controller.dart';

class Ejercicio2View extends GetView<Ejercicio2Controller> {
  const Ejercicio2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Diagrama de flujo'),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TitleWidget(titleName: appConstants.ejercicio2),
                InputN(controller: controller),
                ElevatedButton(
                    onPressed: (() => controller.procesar()),
                    child: const Text("Procesar")),
                ResponseWidget(controller: controller)
              ],
            ),
          ),
        ));
  }
}
