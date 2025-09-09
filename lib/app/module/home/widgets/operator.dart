import 'package:flutter/material.dart';

import 'package:jogo_da_velha/app/operacao/calcular.dart';

class Operator extends StatelessWidget {
  final TextEditingController controllerEC1;
  final TextEditingController controllerEC2;
  final TextEditingController operatorEC;
  void Function(int) onSetCurrent;

  Operator({
    super.key,
    required this.controllerEC1,
    required this.controllerEC2,
    required this.operatorEC,
    required this.onSetCurrent,
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
                  onPressed: () {
                    onSetCurrent(2);
                    operatorEC.text = '+';
                  },
                  child: Center(
                    child: Text('+'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    onSetCurrent(2);
                    operatorEC.text = '-';
                  },
                  child: Center(
                    child: Text('-'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    onSetCurrent(2);
                    operatorEC.text = '*';
                  },
                  child: Center(
                    child: Text('x'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    onSetCurrent(2);
                    operatorEC.text = '/';
                  },
                  child: Center(
                    child: Text('/'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Center(
                    child: Text('%'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    return calcular(controllerEC1, controllerEC2, operatorEC);
                  },
                  child: Center(
                    child: Text('='),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
