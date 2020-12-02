import 'package:sotapp/pantallas/presentacion.dart';
import 'package:flutter/material.dart';

class Sotapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sotapp',
      home: Presentacion(),
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }
}
