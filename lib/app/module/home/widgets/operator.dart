import 'package:flutter/material.dart';

import 'package:jogo_da_velha/app/operacao/calcular.dart';

class Operator extends StatelessWidget {
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
    // required this.onCalculator,
  });

  static get setControllerCurrent => null;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(70, 70),
                  ),
                  onPressed: () {
                    onSetCurrent(2);
                    operatorEC.text = '+';
                  },
                  child: Center(
                    child: Text('+'),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(70, 70),
                  ),
                  onPressed: () {
                    onSetCurrent(2);
                    operatorEC.text = '-';
                  },
                  child: Center(
                    child: Text('-'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(70, 70),
                  ),
                  onPressed: () {
                    onSetCurrent(2);
                    operatorEC.text = '*';
                  },
                  child: Center(
                    child: Text('x'),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(70, 70),
                  ),
                  onPressed: () {
                    onSetCurrent(2);
                    operatorEC.text = '/';
                  },
                  child: Center(
                    child: Text('/'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(70, 70),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text('%'),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(70, 70),
                  ),
                  onPressed: () {
                    String op = operatorEC.text;

                    double num1 = double.tryParse(controllerEC1.text) ?? 0.0;
                    double num2 = double.tryParse(controllerEC2.text) ?? 0.0;
                    double resultado = calcular(num1, num2, op);
                    clear(controllerEC2);
                    controllerEC1.text = resultado.toString();
                  },
                  child: Center(
                    child: Text('='),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
