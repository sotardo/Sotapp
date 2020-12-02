import 'package:sotapp/clases/producto.dart';
import 'package:sotapp/pantallas/chango/prod_chango.dart';
import 'package:flutter/material.dart';

List<Producto> chango = [];

class Chango extends StatefulWidget {
  @override
  _ChangoState createState() => _ChangoState();
}

class _ChangoState extends State<Chango> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chango",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: chango.isEmpty
          ? Center(child: Text("No agregaste nada"))
          : GridView.builder(
              itemCount: chango.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (BuildContext context, int index) {
                return ProductoEnChango(chango[index]);
              },
            ),
    );
  }
}
