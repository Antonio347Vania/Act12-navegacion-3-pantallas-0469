import 'package:flutter/material.dart';
import '../main.dart';
import 'grid_productos.dart';

class Pagina4 extends StatelessWidget {
  const Pagina4({super.key});

  @override
  Widget build(BuildContext context) {
    final productos = [
      {
        'n': 'Aceite',
        'p': '\$42.00',
        'i': 'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/Aceite%20Aguacate.jpg'
      },
      {
        'n': 'Arroz',
        'p': '\$24.50',
        'i': 'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/Arroz.jpg'
      },
    ];

    return Scaffold(
      appBar: buildSorianaAppBar(context),
      endDrawer: const MenuLateral(),
      body: GridProductos(
        titulo: "Artículos de Despensa",
        items: productos,
        colorTitulo: Colors.blue,
      ),
    );
  }
}
