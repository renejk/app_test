import 'package:get/get.dart';

class Ejercicio3Controller extends GetxController {
  int num1 = 0;
  int num2 = 0;

  final resultado = 0.obs;

  onChangeNum1(String value) {
    if (value.isNotEmpty) {
      num1 = int.parse(value);
    }
  }

  onChangeNum2(String value) {
    if (value.isNotEmpty) {
      num2 = int.parse(value);
    }
  }

  procesar() {
    resultado.value = buscarNumeroPerfecto();
  }

  int buscarNumeroPerfecto() {
    for (int num = num1; num <= num2; num++) {
      int sumaDivisores = 0;
      for (int i = 1; i < num; i++) {
        if (num % i == 0) {
          sumaDivisores += i;
        }
      }
      if (sumaDivisores == num) {
        return num;
      }
    }
    return -1;
  }
}
