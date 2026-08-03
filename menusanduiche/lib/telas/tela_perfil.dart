import 'package:flutter/material.dart';

import '../widgets/menu_app.dart';

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        centerTitle: true,
      ),

      drawer: const MenuApp(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                child: Icon(Icons.person, size: 50),
              ),

              const SizedBox(height: 16),

              const Text(
                'Jogador123',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Apaixonado por jogos de aventura e estratégia.',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      _linhaInfo('Pontuação', '4.320 pts'),
                      const Divider(),
                      _linhaInfo('Jogos concluídos', '18'),
                      const Divider(),
                      _linhaInfo('Conquistas', '7'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _linhaInfo(String titulo, String valor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(valor),
      ],
    );
  }
}