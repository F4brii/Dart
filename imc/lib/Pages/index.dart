import 'dart:math';

import 'package:flutter/material.dart';

import 'Components/capaCuatro.dart';
import 'Components/capaDos.dart';
import 'Components/capaTres.dart';
import 'Components/capaUno.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      body: _body(),
      backgroundColor: Colors.black,
    );
  }

  Widget _body() {
    return (Container(
      child: Column(
        children: [
          Container(
            child: CapaUno(),
          ),
          Container(
            child: CapaDos(),
          ),
          Container(
            child: CapaTres(),
          ),
          Container(
            child: CapaCuatro(),
          )
        ],
      ),
    ));
  }
}
