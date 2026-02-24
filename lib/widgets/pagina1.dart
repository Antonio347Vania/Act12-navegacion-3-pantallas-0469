import 'package:flutter/material.dart';
import '../main.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildSorianaAppBar(context),
      endDrawer: const MenuLateral(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Buscador
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
                        border: Border.all(color: const Color(0xFFEEEEEE)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const TextField(
                        decoration: InputDecoration(hintText: "Buscar en Soriana...", border: InputBorder.none),
                      ),
                    ),
                  ),
                  Container(
                    height: 45, width: 55,
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8))
                    ),
                    child: const Icon(Icons.search, color: Colors.white),
                  ),
                ],
              ),
            ),
            // 2. Banner de Oferta
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(colors: [Color(0xFF689F38), Color(0xFF9CCC65)]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("MARTES Y MIÉRCOLES", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                  Text("Campo Fresco", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
                  Text("Las mejores frutas y verduras", style: TextStyle(color: Colors.white, fontSize: 14)),
                ],
              ),
            ),
            const SizedBox(height: 25),
            // 3. Botones de categorías
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _btnCat(context, "Lácteos", Icons.local_drink, const Color(0xFF8BC34A), '/lacteos'),
                _btnCat(context, "Carnes", Icons.kebab_dining, const Color(0xFFF06292), '/carnes'),
                _btnCat(context, "Despensa", Icons.shopping_basket, const Color(0xFF4FC3F7), '/despensa'),
              ],
            ),
            const SizedBox(height: 30),
            const Text("Productos Destacados", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("Vania Antonio 6°I 0469", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Image.network('https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/yop.jpg', height: 100),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _btnCat(BuildContext context, String t, IconData i, Color c, String r) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, r),
      child: Container(
        width: 100, 
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: c,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: c.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(i, color: Colors.white, size: 30),
            const SizedBox(height: 8),
            Text(t, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
