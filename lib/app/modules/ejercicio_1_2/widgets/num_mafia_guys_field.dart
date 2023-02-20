import 'package:app_test/app/modules/ejercicio_1_2/controllers/ejercicio_1_2_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumMafiaGuys extends StatelessWidget {
  const NumMafiaGuys({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final Ejercicio12Controller controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        onChanged: controller.onChangeNumMafiaGuys,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Numero de chicos gansters',
            counterText: "Solo números"),
      ),
    );
  }
}
