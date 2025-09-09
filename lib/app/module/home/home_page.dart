import 'package:flutter/material.dart';
import 'package:jogo_da_velha/app/module/home/widgets/numbers.dart';
import 'package:jogo_da_velha/app/module/home/widgets/operator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final controllerEC1 = TextEditingController();
  final controllerEC2 = TextEditingController();
  final operatorEC = TextEditingController();

  int controllerCurrent = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Row(
                children: [
                  TextFormField(
                    readOnly: true,
                    controller: controllerEC1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  TextFormField(
                    readOnly: true,
                    controller: controllerEC2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Numbers(
                  controllerEC1: controllerEC1,
                  controllerEC2: controllerEC2,
                  controllerCurrent: controllerCurrent,
                ),
                Operator(
                  controllerEC1: controllerEC1,
                  controllerEC2: controllerEC2,
                  operatorEC: operatorEC,
                  onSetCurrent: (int value) {
                    setState(() {
                      controllerCurrent = value;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
