// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

class Ejercicio2Controller extends GetxController {
  int N = 0;
  RxMap resultado = {}.obs;

  onChange(String value) {
    if (value.isNotEmpty) {
      N = int.parse(value);
    }
  }

  procesar() {
    // inicializar variables
    int BC = 0, BV = 0, BD = 0, BC2 = 0, BM = 0;
    int C = N;

    while (C >= 50000) {
      BC = BC + 1;
      C = C - 50000;
    }
    while (C >= 20000) {
      BV = BV + 1;
      C = C - 20000;
    }
    while (C >= 10000) {
      BD = BD + 1;
      C = C - 10000;
    }
    while (C >= 5000) {
      BC2 = BC2 + 1;
      C = C - 5000;
    }
    while (C >= 1000) {
      BM = BM + 1;
      C = C - 1000;
    }

    int resto = C;

    resultado.value = {
      "BC": BC,
      "BV": BV,
      "BD": BD,
      "BC2": BC2,
      "BM": BM,
      "resto": resto
    };
  }
}
