import 'package:sotapp/pantallas/productos/ver_producto.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../clases/producto.dart';

class VistaGrilla extends StatelessWidget {
  final List<Producto> _productos = [
    producto1,
    producto2,
    producto3,
    producto4,
    producto5,
    producto6,
    producto8,
    producto9,
    producto10,
    producto11,
    producto12,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Productos",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        itemCount: _productos.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return VerProducto(_productos[index]);
        },
      ),
    );
  }
}
