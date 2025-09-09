import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final TextEditingController controller;
  const TextForm({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: TextFormField(
        textAlign: TextAlign.end,
        readOnly: true,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        style: TextStyle(
          color: Colors.white,
          fontSize: 50,
        ),
      ),
    );
  }
}
