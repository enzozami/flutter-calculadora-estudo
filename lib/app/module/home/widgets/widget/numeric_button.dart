import 'package:flutter/material.dart';

class NumericButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color? backgoundColor;
  const NumericButton(
      {super.key, required this.onPressed, required this.label, this.backgoundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(80, 80),
          backgroundColor: backgoundColor,
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            label,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
