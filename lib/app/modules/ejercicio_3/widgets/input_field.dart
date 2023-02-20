import 'package:app_test/app/modules/ejercicio_3/controllers/ejercicio_3_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputN extends StatelessWidget {
  const InputN({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final Ejercicio3Controller controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
                onChanged: controller.onChangeNum1,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Numero 1',
                )),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: TextField(
                onChanged: controller.onChangeNum2,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Numero 2',
                )),
          ),
        ],
      ),
    );
  }
}
