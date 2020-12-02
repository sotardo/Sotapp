import 'package:sotapp/clases/producto.dart';
import 'package:flutter/material.dart';

class ProductoEnChango extends StatelessWidget {
  ProductoEnChango(this.producto);
  final Producto producto;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Card(
        elevation: 5.0,
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
      ),
    );
  }
}
