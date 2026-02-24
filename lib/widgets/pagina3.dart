import 'package:flutter/material.dart';
import '../main.dart';
import 'grid_productos.dart';

class Pagina3 extends StatelessWidget {
  const Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    final productos = [
      {'n': 'Milanesa Res', 'p': '\$165.00', 'i': 'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/carne%201.jpg'},
      {'n': 'Pechuga Pollo', 'p': '\$115.00', 'i': 'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/carne%202.jpg'},
    ];

    return Scaffold(
      appBar: buildSorianaAppBar(context),
      endDrawer: const MenuLateral(),
      body: GridProductos(titulo: "Carnes", items: productos, colorTitulo: Colors.red),
    );
  }
}
