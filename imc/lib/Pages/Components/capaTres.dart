import 'package:flutter/material.dart';

class CapaTres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(5.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: Text(""),
          )),
          Expanded(
              child: Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(5.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: Text(""),
          ))
        ],
      )),
    );
  }
}
