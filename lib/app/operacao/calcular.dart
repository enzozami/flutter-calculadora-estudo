import 'package:flutter/material.dart';

void calcular(TextEditingController controllerEC1, TextEditingController controllerEC2,
    TextEditingController operatorEC) {
  String valor1 = controllerEC1.text;
  String valor2 = controllerEC2.text;
  String operacao = operatorEC.text;
  double resultado;

  double num1 = double.tryParse(valor1) ?? 0.0;
  double num2 = double.tryParse(valor2) ?? 0.0;

  switch (operacao) {
    case '+':
      resultado = num1 + num2;
      break;
    case '-':
      resultado = num1 - num2;
      break;
    case '*':
      resultado = num1 * num2;
      break;
    case '/':
      resultado = num1 / num2;
      break;
  }
}
