import 'package:get/get.dart';

import '../controllers/ejercicio_1_controller.dart';

class Ejercicio1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Ejercicio1Controller>(
      () => Ejercicio1Controller(),
    );
  }
}
