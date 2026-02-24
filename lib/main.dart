import 'package:flutter/material.dart';
import 'widgets/pagina1.dart';
import 'widgets/pagina2.dart';
import 'widgets/pagina3.dart';
import 'widgets/pagina4.dart';

void main() => runApp(const AppSoriana());

class AppSoriana extends StatelessWidget {
  const AppSoriana({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soriana App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF7C02F)),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      // RUTAS NOMBRADAS
      initialRoute: '/',
      routes: {
        '/': (context) => const Pagina1(),
        '/lacteos': (context) => const Pagina2(),
        '/carnes': (context) => const Pagina3(),
        '/despensa': (context) => const Pagina4(),
      },
    );
  }
}

// APPBAR REUTILIZABLE (Para no repetir código en cada archivo)
AppBar buildSorianaAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: const Color(0xFFF7C02F),
    elevation: 0,
    leading: GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/'),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(
          'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/logo.jpg',
          fit: BoxFit.contain,
        ),
      ),
    ),
    title: GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/'),
      child: const Text('SORIANA', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
    ),
    centerTitle: true,
    actions: [
      Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.menu, color: Colors.black87),
          onPressed: () => Scaffold.of(context).openEndDrawer(),
        ),
      ),
    ],
  );
}

// MENÚ LATERAL REUTILIZABLE
class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFFF7C02F)),
            child: Text('Categorías', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          ListTile(title: const Text('Lácteos'), onTap: () => Navigator.pushNamed(context, '/lacteos')),
          ListTile(title: const Text('Carne'), onTap: () => Navigator.pushNamed(context, '/carnes')),
          ListTile(title: const Text('Despensa'), onTap: () => Navigator.pushNamed(context, '/despensa')),
        ],
      ),
    );
  }
}
