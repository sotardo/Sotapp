import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sotapp/clases/producto.dart';
import 'package:sotapp/pantallas/productos/productos_grilla.dart';

class ProductosTiposPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
      ),
      body: Center(
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("tipos").snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (ctx, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        title: Text(
                          "${snapshot.data.docs[index].data()["tipo"]}",
                        ),
                        onTap: () {
                          List<Producto> prodsDelTipo = [];
                          todosLosProductos.map((Producto p) {
                            if (snapshot.data.docs[index].data()["tipo"] ==
                                p.tipo) {
                              prodsDelTipo.add(p);
                            }
                          }).toList();
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => VistaGrilla(
                                productos: prodsDelTipo,
                                tipo: snapshot.data.docs[index].data()["tipo"],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              );
            }
            if (snapshot.hasError) return Text("Hubo un error");
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
