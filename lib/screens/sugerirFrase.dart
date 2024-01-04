// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'formSugerirFrase.dart';

class SugerirFraseScreen extends StatelessWidget {
  const SugerirFraseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Frases Sugeridas'),
      ),
      body: const Column(
        children: [
          Expanded(
            child: Center(
              child: Text('Nenhum registro encontrado'),
            ),
          ),
          Roda()
        ],
      )
    );

  }
}

class Roda extends StatelessWidget {
  const Roda({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: const BoxConstraints.expand(height: 10),
        child: Stack(
          fit: StackFit.expand, // Estende o Stack para preencher o Container
          children: [
            Positioned(
              right: 45,
              bottom: 0,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const FormSugerirFrase(),
                  ));
                },
                icon: const Icon(Icons.add_circle_outlined, color: Colors.green, size: 35,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}