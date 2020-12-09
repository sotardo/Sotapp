import 'package:sotapp/pantallas/productos/ver_producto.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../clases/producto.dart';

class VistaGrilla extends StatelessWidget {
    VistaGrilla({@required this.productos, @required this.tipo});
  final String tipo;
  final List<Producto> productos;

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
        itemCount: productos.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return VerProducto(productos[index]);
        },
      ),
    );
  }
}
