import 'package:calculadora/app/funcoes/clear.dart';
import 'package:calculadora/app/module/home/widgets/widget/numeric_button.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final TextEditingController resultadoEC;
  final TextEditingController controllerEC1;
  final TextEditingController controllerEC2;
  final TextEditingController operatorEC;
  final void Function(int) onSetCurrent;
  final int controllerCurrent;
  // final void Function(double) onCalculator;

  const ActionButton({
    super.key,
    required this.controllerEC1,
    required this.controllerEC2,
    required this.operatorEC,
    required this.onSetCurrent,
    required this.resultadoEC,
    required this.controllerCurrent,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NumericButton(
          onPressed: () {
            clearAll(controllerEC1, controllerEC2, operatorEC, resultadoEC);
            onSetCurrent(1);
          },
          label: 'C',
        ),
        NumericButton(
          onPressed: () {
            if (controllerCurrent == 1) {
              clearLastDigit(controllerEC1);
            }
            if (controllerCurrent == 2) {
              clearLastDigit(controllerEC2);
            }
          },
          label: '⌫',
        ),
        NumericButton(
          onPressed: () {
            onSetCurrent(2);
            operatorEC.text = '%';
          },
          label: '%',
        ),
        NumericButton(
          onPressed: () {
            onSetCurrent(2);
            operatorEC.text = '/';
          },
          label: '/',
        ),
      ],
    );
  }
}
