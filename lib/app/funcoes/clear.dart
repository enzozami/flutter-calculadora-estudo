import 'package:flutter/material.dart';

void clear(TextEditingController controllerEC1) {
  controllerEC1.clear();
}

void clearAll(TextEditingController controllerEC1, TextEditingController controllerEC2,
    TextEditingController operatorEC, TextEditingController resultadoEC) {
  controllerEC1.clear();
  controllerEC2.clear();
  operatorEC.clear();
  resultadoEC.clear();
}

void clearLastDigit(TextEditingController controller) {
  if (controller.text.isNotEmpty) {
    controller.text = controller.text.substring(0, controller.text.length - 1);
  }
}
