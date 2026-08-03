import 'package:flutter/material.dart';

import '../main.dart';
import '../telas/tela_perfil.dart';
import '../telas/tela_favoritos.dart';

// ---------------------------------------------------------
// MENU SANDUÍCHE (Drawer)
// Widget reaproveitado em todas as telas do app.
// ---------------------------------------------------------
class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Cabeçalho do menu
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.sports_esports,
                  size: 50,
                  color: Colors.white,
                ),
                SizedBox(height: 10),
                Text(
                  'Game Explorer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Explore. Jogue. Conquiste.',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),

          // Opção 1 - Início
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Início'),
            onTap: () {
              Navigator.pop(context); // fecha o menu
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const TelaInicio()),
              );
            },
          ),

          // Opção 2 - Perfil
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Perfil'),
            onTap: () {
              Navigator.pop(context); // fecha o menu
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TelaPerfil()),
              );
            },
          ),

          // Opção 3 - Favoritos
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favoritos'),
            onTap: () {
              Navigator.pop(context); // fecha o menu
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TelaFavoritos()),
              );
            },
          ),
        ],
      ),
    );
  }
}