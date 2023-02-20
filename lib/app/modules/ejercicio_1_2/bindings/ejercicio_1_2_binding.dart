import 'package:app_test/app/modules/ejercicio_1_2/controllers/ejercicio_1_2_controller.dart';
import 'package:get/get.dart';

class Ejercicio12Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Ejercicio12Controller>(
      () => Ejercicio12Controller(),
    );
  }
}
