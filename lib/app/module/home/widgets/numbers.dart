import 'package:calculadora/app/module/home/widgets/widget/numeric_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Numbers extends StatelessWidget {
  final TextEditingController controllerEC1;
  final TextEditingController controllerEC2;
  int controllerCurrent;
  Numbers({
    super.key,
    required this.controllerEC1,
    required this.controllerEC2,
    required this.controllerCurrent,
  });

  void setValue(String value) {
    if (controllerCurrent == 1) {
      controllerEC1.text += value;
    } else {
      controllerEC2.text += value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                NumericButton(
                  onPressed: () => setValue('7'),
                  label: '7',
                  backgoundColor: Colors.amber,
                ),
                NumericButton(
                  onPressed: () => setValue('8'),
                  label: '8',
                  backgoundColor: Colors.amber,
                ),
                NumericButton(
                  onPressed: () => setValue('9'),
                  label: '9',
                  backgoundColor: Colors.amber,
                ),
              ],
            ),
            Row(
              children: [
                NumericButton(
                  onPressed: () => setValue('4'),
                  label: '4',
                  backgoundColor: Colors.amber,
                ),
                NumericButton(
                  onPressed: () => setValue('5'),
                  label: '5',
                  backgoundColor: Colors.amber,
                ),
                NumericButton(
                  onPressed: () => setValue('6'),
                  label: '6',
                  backgoundColor: Colors.amber,
                ),
              ],
            ),
            Row(
              children: [
                NumericButton(
                  onPressed: () => setValue('1'),
                  label: '1',
                  backgoundColor: Colors.amber,
                ),
                NumericButton(
                  onPressed: () => setValue('2'),
                  label: '2',
                  backgoundColor: Colors.amber,
                ),
                NumericButton(
                  onPressed: () => setValue('3'),
                  label: '3',
                  backgoundColor: Colors.amber,
                ),
              ],
            ),
            Row(
              children: [
                NumericButton(onPressed: () => setValue('0'), label: '0'),
              ],
            )
          ],
        ),
      ],
    );
  }
}
