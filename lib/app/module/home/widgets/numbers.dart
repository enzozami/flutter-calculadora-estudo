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
                ElevatedButton(
                  onPressed: () => setValue('1'),
                  child: Center(
                    child: Text('1'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => setValue('2'),
                  child: Center(
                    child: Text('2'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => setValue('3'),
                  child: Center(
                    child: Text('3'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => setValue('4'),
                  child: Center(
                    child: Text('4'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => setValue('5'),
                  child: Center(
                    child: Text('5'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => setValue('6'),
                  child: Center(
                    child: Text('6'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => setValue('7'),
                  child: Center(
                    child: Text('7'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => setValue('8'),
                  child: Center(
                    child: Text('8'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => setValue('9'),
                  child: Center(
                    child: Text('9'),
                  ),
                ),
              ],
            )
          ],
        ),
        Column(
          children: [
            ElevatedButton(
              onPressed: () => setValue('0'),
              child: Center(
                child: Text('0'),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Center(
                child: Text('C'),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Center(
                child: Text('='),
              ),
            ),
          ],
        )
      ],
    );
  }
}
