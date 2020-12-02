import 'package:flutter/cupertino.dart';

class Producto {
  final String nombre;
  final int precio;
  final String descripcion;
  final Image imagen;
  bool expandido;

  Producto({
    this.nombre,
    this.precio,
    this.descripcion,
    this.imagen,
    this.expandido = false,
  });
}

final producto1 = new Producto(
  nombre: 'Jabon',
  precio: 20,
  descripcion: 'jabon para lavar ropa',
  imagen: Image.asset('assets/jabon_ropa_ace.jpg'),
);

final producto2 = new Producto(
  nombre: 'Detergente',
  precio: 50,
  descripcion: 'Detergente con olor a limon',
  imagen: Image.asset('assets/detergente_cif.jpg'),
);

final producto3 = new Producto(
  nombre: 'Lavandina',
  precio: 100,
  descripcion: 'Lavandina que no mancha la ropa',
  imagen: Image.asset('assets/lavandina_ayudin.jpg'),
);

final producto4 = new Producto(
  nombre: 'Guantes',
  precio: 30,
  descripcion: 'Guantes de goma',
  imagen: Image.asset('assets/guantes.jpg'),
);

final producto5 = new Producto(
  nombre: 'Guantes',
  precio: 40,
  descripcion: 'Guantes de goma',
  imagen: Image.asset('assets/guantes2.jpg'),
);

final producto6 = new Producto(
  nombre: 'Guantes',
  precio: 35,
  descripcion: 'Guantes de goma',
  imagen: Image.asset('assets/guantes3.jpg'),
);

final producto7 = new Producto(
  nombre: 'Jabon',
  precio: 60,
  descripcion: 'jabon para lavar ropa',
  imagen: Image.asset('assets/jabon_ropa_skip.jpg'),
);

final producto8 = new Producto(
  nombre: 'Jabon',
  precio: 50,
  descripcion: 'jabon para lavar ropa',
  imagen: Image.asset('assets/jabon_ropa_vivere.jpg'),
);

final producto9 = new Producto(
  nombre: 'Lavandina',
  precio: 70,
  descripcion: 'lavandina marca ayudin',
  imagen: Image.asset('assets/lavandina_ayudin.jpg'),
);

final producto10 = new Producto(
  nombre: 'Lavandina',
  precio: 30,
  descripcion: 'Lavandina marca Querubin',
  imagen: Image.asset('assets/lavandina_querubin.jpg'),
);

final producto11 = new Producto(
  nombre: 'Liquido piso',
  precio: 100,
  descripcion: 'Liquido para lavar el piso marca Lysoform',
  imagen: Image.asset('assets/liquido_piso_lysoform.jpg'),
);

final producto12 = new Producto(
  nombre: 'Liquido piso',
  precio: 90,
  descripcion: 'Liquido para lavar el piso marca Lysoform',
  imagen: Image.asset('assets/liquido_piso_lysoform2.jpg'),
);
