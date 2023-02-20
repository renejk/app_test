import 'package:app_test/app/modules/ejercicio_4/controllers/ejercicio_4_controller.dart';
import 'package:flutter/material.dart';

class InputN extends StatelessWidget {
  const InputN({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final Ejercicio4Controller controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
          onChanged: controller.onChange,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Palabra',
          )),
    );
  }
}
