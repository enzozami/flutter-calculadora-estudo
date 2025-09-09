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
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .4,
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: TextFormField(
                            textAlign: TextAlign.end,
                            readOnly: true,
                            controller: controllerEC1,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.end,
                            readOnly: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            controller: operatorEC,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            textAlign: TextAlign.end,
                            readOnly: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            controller: controllerEC2,
                            style: TextStyle(color: Colors.white),
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
                height: MediaQuery.of(context).size.height * .6,
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Numbers(
                      controllerEC1: controllerEC1,
                      controllerEC2: controllerEC2,
                      controllerCurrent: controllerCurrent,
                    ),
                    VerticalDivider(
                      color: Colors.white,
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
                      // onCalculator: (double resultado) {
                      //   setState(() {
                      //     controllerEC1.text = resultado.toString();
                      //   });
                      // },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
