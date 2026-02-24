import 'package:flutter/material.dart';
import '../main.dart';
import 'grid_productos.dart'; // Importar el widget reutilizable

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    final productos = [
      {'n': 'Leche Entera', 'p': '\$28.50', 'i': 'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/leche.jpg'},
      {'n': 'Yogurt Griego', 'p': '\$45.00', 'i': 'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/450f4dc95915b5c09d724dadb1ab284c.jpg'},
      {'n': 'Queso Crema', 'p': '\$32.00', 'i': 'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/queso%20crema.jpg'},
    ];

    return Scaffold(
      appBar: buildSorianaAppBar(context),
      endDrawer: const MenuLateral(),
      body: GridProductos(titulo: "Lácteos", items: productos, colorTitulo: Colors.orange),
    );
  }
}
