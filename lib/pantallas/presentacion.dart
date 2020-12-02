import 'package:sotapp/menu_inferior.dart';
import 'package:flutter/material.dart';

class Presentacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          color: Colors.red,
          child: Text(
            'Ingresar',
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuInferior()),
            );
          },
        ),
      ),
    );
  }
}
