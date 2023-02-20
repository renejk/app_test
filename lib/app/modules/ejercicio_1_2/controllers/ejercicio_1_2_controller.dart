import 'dart:ffi';

import 'package:get/get.dart';

class Ejercicio12Controller extends GetxController {
  int numMafiaGuys = 0;
  List mafia = [].obs;

  final chicos = ''.obs;
  bool isPar = false;
  // chicos
  String completo = "(-_-)",
      parcialIz = "(-_-",
      parcialDer = "-_-)",
      medioIz = "(-_",
      medioDer = "_-)",
      cuartoIz = "(-",
      cuartoDer = "-)",
      vacio = "O_o";

  // obtener el numero de chicos
  onChangeNumMafiaGuys(String value) {
    if (value.isNotEmpty) {
      numMafiaGuys = int.parse(value);
      print(calcularMafiaGuys(numMafiaGuys));
      chicos.value = calcularMafiaGuys(numMafiaGuys);
    } else {
      numMafiaGuys = 0;
      chicos.value = calcularMafiaGuys(numMafiaGuys);
    }
  }

  // ejecutar metodo para calcular chicos
  calcularMafiaGuys(int numChicos) {
    mafia.clear();
    if (numChicos < 1 || numChicos > 255) {
      return '(O_o)';
    }

    // agregar chico completo
    mafia.add(completo);

    //  validar si hay mas de 7 chicos
    if (numChicos > 7) {
      // se restan del llenado los dos ultimos que se agregan al final
      numChicos = numChicos - 2;
      llenado(numChicos);
      mafia.insert(0, cuartoIz);
      mafia.add(cuartoDer);
    } else {
      llenado(numChicos);
    }

    return mafia.join("");
  }

  // llenado de chicos
  llenado(numChicos) {
    int valitaMod = numChicos % 2;
    isPar = valitaMod == 0;
    if (isPar) {
      int mitad = numChicos ~/ 2;
      int aux = 2;
      for (int i = 0; i < mitad; i++) {
        if (aux == i) {
          insertGuysParcial(i, mitad);
          aux = aux + 3;
        } else {
          insertGuys(i, mitad);
        }
      }
    } else {
      // numChicos = numChicos - 1;
      int mitad = numChicos ~/ 2;
      int aux = 2;

      for (int i = 0; i < mitad; i++) {
        if (aux == i) {
          insertGuysParcial(i, mitad);
          aux = aux + 3;
        } else {
          insertGuys(i, mitad);
        }
      }
    }
  }

  // insertar chicos segun su posicion
  void insertGuysParcial(index, numChicos) {
    print("index: $index, numChicos: $numChicos");
    if (!isPar) {
      mafia.insert(0, parcialIz);
      mafia.add(parcialDer);
    } else {
      if (index + 1 == numChicos) {
        mafia.insert(0, parcialIz);
      } else {
        mafia.insert(0, parcialIz);
        mafia.add(parcialDer);
      }
    }
  }

  void insertGuys(index, numChicos) {
    print("index: $index, numChicos: $numChicos");
    if (!isPar) {
      mafia.insert(0, medioIz);
      mafia.add(medioDer);
    } else {
      if (index + 1 == numChicos) {
        mafia.insert(0, medioIz);
      } else {
        mafia.insert(0, medioIz);
        mafia.add(medioDer);
      }
    }
  }
}
