import 'package:sotapp/pantallas/productos/producto_info.dart';
import 'package:sotapp/clases/producto.dart';
import 'package:flutter/material.dart';

class VerProducto extends StatelessWidget {
  VerProducto(this.producto);
  final Producto producto;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: FlatButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: producto.imagen),
            Text(
              '${producto.nombre}',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ],
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InfoProducto(
                prod: producto,
              ),
            ),
          );
        },
      ),
    );
  }
}
