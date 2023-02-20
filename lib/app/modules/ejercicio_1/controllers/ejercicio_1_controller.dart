import 'package:app_test/app/models/nota.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Ejercicio1Controller extends GetxController {
  final TextEditingController calificationController = TextEditingController();

  List<Nota> notas = Nota.plantilla();

  int calification = 0;

  final letra = ''.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print(notas);
  }

  onChangeCalification(String value) {
    if (value.isNotEmpty) {
      calification = int.parse(value);
      calcularLetra();
      print(letra.value);
    }
  }

  void calcularLetra() {
    if (calification >= 0 && calification <= 20) {
      for (var nota in notas) {
        if (calification >= nota.rangeMin && calification <= nota.rangeMax) {
          letra.value = nota.letra;
        }
      }
    } else {
      letra.value = 'Fuera de rango';
    }
  }
}
