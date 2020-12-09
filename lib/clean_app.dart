import 'package:sotapp/pantallas/presentacion.dart';
import 'package:flutter/material.dart';

class CleanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CleanApp',
      home: Presentacion(),
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }
}
