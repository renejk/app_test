import 'package:app_test/app/modules/ejercicio_2/controllers/ejercicio_2_controller.dart';
import 'package:get/get.dart';

class Ejercicio2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Ejercicio2Controller>(
      () => Ejercicio2Controller(),
    );
  }
}
