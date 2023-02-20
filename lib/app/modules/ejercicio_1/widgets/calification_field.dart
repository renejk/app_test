import 'package:app_test/app/modules/ejercicio_1/controllers/ejercicio_1_controller.dart';
import 'package:app_test/app/widgets/custom_text_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalificationWidget extends StatelessWidget {
  const CalificationWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final Ejercicio1Controller controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        onChanged: controller.onChangeCalification,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          NumericalRangeFormatter(max: 20, min: 1)
        ],
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Calificación',
            counterText: "Solo números del 1 al 20"),
      ),
    );
  }
}
