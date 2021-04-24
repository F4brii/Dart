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
                        child: Text("/"))
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
                        child: Text("x"))
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
                        child: Text("-"))
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
                            operaciones = "";
                            error = "";
                            noSignos = 0;
                          });
                        },
                        child: Text("C")),
                    ElevatedButton(
                        onPressed: () {
                          operacion();
                        },
                        child: Text("=")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += " + ";
                          });
                        },
                        child: Text("+"))
                  ],
                )
              ],
            ),
          )
        ],
      );

  operacion() {
    List<String> ejercicio = operaciones.split(" ");
    var resultado;
    int errores = 0;
    try {
      switch (ejercicio[1].trim()) {
        case "/":
          try {
            resultado = int.parse(ejercicio[0]) / int.parse(ejercicio[2]);
          } catch (e) {
            errores++;
          }
          break;
        case "x":
          try {
            resultado = int.parse(ejercicio[0]) * int.parse(ejercicio[2]);
          } catch (e) {
            errores++;
          }
          break;
        case "+":
          try {
            resultado = int.parse(ejercicio[0]) + int.parse(ejercicio[2]);
          } catch (e) {
            errores++;
          }
          break;
        case "-":
          try {
            resultado = int.parse(ejercicio[0]) - int.parse(ejercicio[2]);
          } catch (e) {
            errores++;
          }
          break;
        default:
          break;
      }

      if (errores == 0) {
        setState(() {
          containers.add(Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(operaciones), Text(" = "), Text("$resultado")],
            ),
          ));
          operaciones = "";
        });
      } else {
        setState(() {
          error = "Expresion mal formada";
        });
      }
    } catch (e) {
      if (noSignos == 0) {
        setState(() {
          containers.add(Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(operaciones)],
            ),
          ));
        });
      }
      noSignos++;
    }
  }
}
