import 'package:sotapp/pantallas/chango/chango.dart';
import 'package:flutter/material.dart';
import '../../clases/producto.dart';

class InfoProducto extends StatefulWidget {
  InfoProducto({this.prod});
  final Producto prod;

  @override
  _InfoProductoState createState() => _InfoProductoState();
}

class _InfoProductoState extends State<InfoProducto> {
  final TextEditingController cantidad = TextEditingController();
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Informacion del Producto")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                padding: EdgeInsets.all(10),
                child: widget.prod.imagen,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  '${widget.prod.nombre}',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  '${widget.prod.descripcion}',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              Form(
                key: key,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 64.0),
                      child: TextFormField(
                        controller: cantidad,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          icon: Icon(Icons.add),
                          labelText: "Cantidad que lleva",
                          hintText: "1,5,10",
                        ),
                        validator: (v) {
                          if (v.isNotEmpty) {
                            int cant = int.parse(v);
                            if (cant > 0) {
                              return null;
                            } else {
                              return "La cantidad tiene que ser mayor a 0";
                            }
                          } else {
                            return "Tiene que llevar por lo menos 1 producto";
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: FlatButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        onPressed: () {
                          if (key.currentState.validate()) {
                            for (int i = 0; i < int.parse(cantidad.text); i++) {
                              setState(() {
                                chango.add(widget.prod);
                              });
                            }
                          }
                        },
                        color: Theme.of(context).primaryColor,
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
