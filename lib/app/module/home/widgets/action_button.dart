import 'package:flutter/material.dart';

import 'package:jogo_da_velha/app/operacao/calcular.dart';

class ActionButton extends StatelessWidget {
  final TextEditingController controllerEC1;
  final TextEditingController controllerEC2;
  final TextEditingController operatorEC;
  final void Function(int) onSetCurrent;
  // final void Function(double) onCalculator;

  const ActionButton({
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
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(80, 80),
            ),
            onPressed: () {
              clearAll(controllerEC1, controllerEC2, operatorEC);
              onSetCurrent(1);
            },
            child: Center(
              child: Text('C'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(80, 80),
            ),
            onPressed: () {},
            child: Center(
              child: Text('%'),
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
              onSetCurrent(2);
              operatorEC.text = '/';
            },
            child: Center(
              child: Text('/'),
            ),
          ),
        ),
      ],
    );
  }
}
