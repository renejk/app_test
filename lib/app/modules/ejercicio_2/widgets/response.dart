import 'package:app_test/app/modules/ejercicio_2/controllers/ejercicio_2_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponseWidget extends StatelessWidget {
  final Ejercicio2Controller controller;

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
      child: Obx(() => Column(
            children: controller.resultado.value.entries
                .map((e) => Row(
                      children: [
                        Text(
                          e.key,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          e.value.toString(),
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ))
                .toList(),
          )),
    );
  }
}
