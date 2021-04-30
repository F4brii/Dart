import 'package:flutter/material.dart';

class CapaCuatro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.all(5.0),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Text("Calcular"));
  }
}
