import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String operaciones = "";
  String error = "";
  List<Container> containers = [];
  List<Text> texts = [];
  int noSignos = 0;

  get title => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      body: _body(),
    );
  }

  Widget _body() => Column(
        children: [
          Expanded(
              child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: containers,
                ),
              ],
            ),
          )),
          Container(
            color: Colors.blue,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(operaciones), Text(error)],
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "7";
                          });
                        },
                        child: Text("7")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "8";
                          });
                        },
                        child: Text("8")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "9";
                          });
                        },
                        child: Text("9")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += " / ";
                          });
                        },
                        child: Text("/")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += " √ ";
                          });
                        },
                        child: Text("√"))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "4";
                          });
                        },
                        child: Text("4")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "5";
                          });
                        },
                        child: Text("5")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "6";
                          });
                        },
                        child: Text("6")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += " x ";
                          });
                        },
                        child: Text("x")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += " ² ";
                          });
                        },
                        child: Text("χ²"))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "1";
                          });
                        },
                        child: Text("1")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "2";
                          });
                        },
                        child: Text("2")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "3";
                          });
                        },
                        child: Text("3")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += " - ";
                          });
                        },
                        child: Text("-")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += " % ";
                          });
                        },
                        child: Text("%"))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "0";
                          });
                        },
                        child: Text("0")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "";
                          });
                        },
                        child: Text("")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones = "";
                            error = "";
                            noSignos = 0;
                          });
                        },
                        child: Text("C")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += " + ";
                          });
                        },
                        child: Text("+")),
                    ElevatedButton(
                      onPressed: () {
                        operacion();
                      },
                      child: Text("="),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      );

  operacion() {
    String operacionInicial = operaciones;
    try {
      do {
        List<String> operacion = operaciones.split(' ');
        if (operacion.length == 1) {
          if (operaciones.contains('+') ||
              operaciones.contains('-') ||
              operaciones.contains('x') ||
              operaciones.contains('/')) {
            break;
          } else {
            noSignos++;
            break;
          }
        }
        if (operaciones.contains('√') || operaciones.contains('²')) {
          noSignos = 0;
          for (int x = 0; x < operacion.length; x++) {
            if (operacion[x] == '√') {
              var resultado = pow(int.parse(operacion[x + 1]), 1 / 2);
              operaciones = operaciones.replaceAll(
                  '${operacion[x]} ${operacion[x + 1]}', '$resultado');
            } else if (operacion[x] == '²') {
              var resultado = pow(int.parse(operacion[x - 1]), 2);
              operaciones = operaciones.replaceAll(
                  '${operacion[x - 1]} ${operacion[x]}', '$resultado');
            }
          }
        } else if (operaciones.contains('x') || operaciones.contains('/')) {
          noSignos = 0;
          for (int x = 0; x < operacion.length; x++) {
            if (operacion[x] == 'x') {
              var resultado =
                  int.parse(operacion[x - 1]) * int.parse(operacion[x + 1]);

              operaciones = operaciones.replaceAll(
                  '${operacion[x - 1]} ${operacion[x]} ${operacion[x + 1]}',
                  '$resultado');
              break;
            } else if (operacion[x] == '/') {
              var resultado =
                  int.parse(operacion[x - 1]) / int.parse(operacion[x + 1]);

              operaciones = operaciones.replaceAll(
                  '${operacion[x - 1]} ${operacion[x]} ${operacion[x + 1]}',
                  '$resultado');
              break;
            }
          }
        } else if (operaciones.contains('+') || operaciones.contains('-')) {
          noSignos = 0;
          for (int x = 0; x < operacion.length; x++) {
            if (operacion[x] == '+') {
              var resultado =
                  int.parse(operacion[x - 1]) + int.parse(operacion[x + 1]);

              operaciones = operaciones.replaceAll(
                  '${operacion[x - 1]} ${operacion[x]} ${operacion[x + 1]}',
                  '$resultado');
              break;
            } else if (operacion[x] == '-') {
              var resultado =
                  int.parse(operacion[x - 1]) - int.parse(operacion[x + 1]);

              operaciones = operaciones.replaceAll(
                  '${operacion[x - 1]} ${operacion[x]} ${operacion[x + 1]}',
                  '$resultado');
              break;
            }
          }
        }
      } while (operaciones.contains('+') ||
          operaciones.contains('-') ||
          operaciones.contains('x') ||
          operaciones.contains('/') ||
          operaciones.contains('√') ||
          operaciones.contains('²'));

      if (noSignos > 0) {
        if (noSignos == 1) {
          setState(() {
            containers.add(Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text(operaciones)],
              ),
            ));
          });
        }
      } else {
        setState(() {
          containers.add(Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(operacionInicial),
                Text("   =   "),
                Text(operaciones)
              ],
            ),
          ));
        });
      }
    } catch (e) {
      setState(() {
        error = "Operacion mal formulada";
      });
    }
  }
}
