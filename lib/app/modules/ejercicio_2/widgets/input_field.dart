import 'package:app_test/app/modules/ejercicio_2/controllers/ejercicio_2_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputN extends StatelessWidget {
  const InputN({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final Ejercicio2Controller controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
          onChanged: controller.onChange,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'N',
          )),
    );
  }
}
