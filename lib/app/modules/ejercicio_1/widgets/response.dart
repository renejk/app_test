import 'package:app_test/app/modules/ejercicio_1/controllers/ejercicio_1_controller.dart';
import 'package:app_test/app/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponseWidget extends StatelessWidget {
  final Ejercicio1Controller controller;

  const ResponseWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Nota:',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Obx(
            () => Text(
              controller.letra.value,
              style: TextStyle(
                fontSize: 18.0,
                color: palette.getColorByNota(controller.letra.value),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
