import 'package:flutter/material.dart';
import 'package:jogo_da_velha/app/module/home/widgets/action_button.dart';
import 'package:jogo_da_velha/app/module/home/widgets/numbers.dart';
import 'package:jogo_da_velha/app/module/home/widgets/operator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final resultadoEC = TextEditingController();
  final controllerEC1 = TextEditingController();
  final controllerEC2 = TextEditingController();
  final operatorEC = TextEditingController();

  int controllerCurrent = 1;

  @override
  void dispose() {
    super.dispose();
    resultadoEC.dispose();
    controllerEC1.dispose();
    controllerEC2.dispose();
    operatorEC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            fit: FlexFit.loose,
                            child: TextFormField(
                              textAlign: TextAlign.end,
                              readOnly: true,
                              controller: controllerEC1,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            child: TextFormField(
                              textAlign: TextAlign.end,
                              readOnly: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              controller: operatorEC,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            child: TextFormField(
                              textAlign: TextAlign.end,
                              readOnly: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              controller: controllerEC2,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        fit: FlexFit.loose,
                        child: TextFormField(
                          textAlign: TextAlign.end,
                          readOnly: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          controller: resultadoEC,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * .6,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  ActionButton(
                    controllerEC1: controllerEC1,
                    controllerEC2: controllerEC2,
                    operatorEC: operatorEC,
                    onSetCurrent: (int value) {
                      setState(() {
                        controllerCurrent = value;
                      });
                    },
                    resultadoEC: resultadoEC,
                    controllerCurrent: controllerCurrent,
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
                        resultadoEC: resultadoEC,
                        // onCalculator: (double resultado) {
                        //   setState(() {
                        //     controllerEC1.text = resultado.toString();
                        //   });
                        // },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
