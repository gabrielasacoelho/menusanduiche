import 'package:flutter/material.dart';

import '../widgets/menu_app.dart';

class TelaFavoritos extends StatelessWidget {
  const TelaFavoritos({super.key});

  final List<Map<String, String>> jogos = const [
    {'nome': 'Aventura Épica', 'categoria': 'RPG'},
    {'nome': 'Corrida Turbo', 'categoria': 'Corrida'},
    {'nome': 'Mundo Estratégico', 'categoria': 'Estratégia'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoritos'),
        centerTitle: true,
      ),

      drawer: const MenuApp(),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: jogos.length,
        itemBuilder: (context, index) {
          final jogo = jogos[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.videogame_asset, size: 40),
              title: Text(jogo['nome']!),
              subtitle: Text(jogo['categoria']!),
              trailing: const Icon(Icons.favorite, color: Colors.red),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Detalhes de ${jogo['nome']}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}