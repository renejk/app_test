import 'package:get/get.dart';

class Ejercicio4Controller extends GetxController {
  String palabra = '';
  final resultado = ''.obs;
  onChange(String value) {
    palabra = value;
  }

  procesar() {
    resultado.value = reverseWords(palabra);
  }

  String reverseWords(String input) {
    List<String> words = input.split(' ');
    words = words.reversed.toList();
    return words.join(' ');
  }
}
