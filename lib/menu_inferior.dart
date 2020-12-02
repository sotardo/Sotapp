import 'package:flutter/material.dart';
import 'pantallas/chango/chango.dart';
import 'pantallas/productos/productos_grilla.dart';

class MenuInferior extends StatefulWidget {
  @override
  _MenuInferiorState createState() => _MenuInferiorState();
}

class _MenuInferiorState extends State<MenuInferior> {
  int _indicePantalla = 0;

  static List<Widget> _pantallas = <Widget>[
    VistaGrilla(),
    Chango(),
  ];

  static List<BottomNavigationBarItem> botonesDelMenu = [
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      title: Text('Explorar productos'),
      backgroundColor: Colors.black,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add_shopping_cart),
      title: Text('Mi chango'),
      backgroundColor: Colors.black,
    ),
  ];

  void _tocarBotonMenu(int index) {
    setState(() {
      _indicePantalla = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pantallas.elementAt(_indicePantalla),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: botonesDelMenu,
        showUnselectedLabels: false,
        onTap: _tocarBotonMenu,
        currentIndex: _indicePantalla,
      ),
    );
  }
}
