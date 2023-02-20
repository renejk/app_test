import 'package:get/get.dart';

import '../controllers/ejercicio_3_controller.dart';

class Ejercicio3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Ejercicio3Controller>(
      () => Ejercicio3Controller(),
    );
  }
}
