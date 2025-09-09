import 'package:flutter/widgets.dart';

double calcular(double num1, double num2, String op) {
  switch (op) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      return num1 / num2;
    case '%':
    // return num1 ?? num2 / 100;
    default:
      return 0.0;
  }
}

void clear(TextEditingController controllerEC1) {
  controllerEC1.clear();
}

void clearAll(TextEditingController controllerEC1, TextEditingController controllerEC2,
    TextEditingController operatorEC) {
  controllerEC1.clear();
  controllerEC2.clear();
  operatorEC.clear();
}
