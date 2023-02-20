import 'package:app_test/app/modules/ejercicio_1_2/widgets/num_mafia_guys_field.dart';
import 'package:app_test/app/modules/ejercicio_1_2/widgets/response.dart';
import 'package:app_test/app/utils/constants.dart';
import 'package:app_test/app/widgets/title.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ejercicio_1_2_controller.dart';

class Ejercicio12View extends GetView<Ejercicio12Controller> {
  const Ejercicio12View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Chicos gansters'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              TitleWidget(titleName: appConstants.ejercicio12),
              NumMafiaGuys(controller: controller),
              ResponseWidget(controller: controller)
            ],
          ),
        ));
  }
}
