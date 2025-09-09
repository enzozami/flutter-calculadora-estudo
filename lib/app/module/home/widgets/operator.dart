import 'package:calculadora/app/funcoes/clear.dart';
import 'package:calculadora/app/operacao/calcular.dart';
import 'package:flutter/material.dart';

class Operator extends StatelessWidget {
  final TextEditingController resultadoEC;
  final TextEditingController controllerEC1;
  final TextEditingController controllerEC2;
  final TextEditingController operatorEC;
  final void Function(int) onSetCurrent;
  // final void Function(double) onCalculator;

  const Operator({
    super.key,
    required this.controllerEC1,
    required this.controllerEC2,
    required this.operatorEC,
    required this.onSetCurrent,
    required this.resultadoEC,
    // required this.onCalculator,
  });

  static get setControllerCurrent => null;

  void onOperatorPressed(String opNew, {bool isEqual = false}) {
    double num1 = double.tryParse(controllerEC1.text) ?? 0.0;
    double num2 = double.tryParse(controllerEC2.text) ?? 0.0;
    String opCurrent = operatorEC.text;

    if (opCurrent.isNotEmpty && controllerEC2.text.isNotEmpty) {
      double resultado = calcular(num1, num2, opCurrent);
      resultadoEC.text = resultado.toString();

      if (!isEqual) {
        controllerEC1.text = resultado.toString();
        clear(operatorEC);
        clear(controllerEC2);
      }
    }

    if (!isEqual) {
      operatorEC.text = opNew;
      onSetCurrent(2);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(80, 80),
            ),
            onPressed: () {
              onOperatorPressed('*');
            },
            child: Center(
              child: Text('x'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(80, 80),
            ),
            onPressed: () {
              onOperatorPressed('-');
            },
            child: Center(
              child: Text('-'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(80, 80),
            ),
            onPressed: () {
              onOperatorPressed('+');
            },
            child: Center(
              child: Text('+'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(80, 80),
            ),
            onPressed: () {
              onOperatorPressed(operatorEC.text, isEqual: true);
              onSetCurrent(1);
            },
            child: Center(
              child: Text('='),
            ),
          ),
        ),
      ],
    );
  }
}
