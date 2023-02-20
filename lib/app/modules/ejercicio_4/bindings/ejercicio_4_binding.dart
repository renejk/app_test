import 'package:get/get.dart';

import '../controllers/ejercicio_4_controller.dart';

class Ejercicio4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Ejercicio4Controller>(
      () => Ejercicio4Controller(),
    );
  }
}
