import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        Container(
          color: Colors.red,
          width: 100,
          height: 100,
          child: Center(child: Text("Hola Mundo")),
        ),
        Container(
          color: Colors.yellow,
          width: 100,
          height: 100,
          child: Center(child: Image(image: AssetImage('assets/a.jpg'))),
        ),
        ElevatedButton(onPressed: () {}, child: Text('Boton'))
      ],
    );
  }
}
