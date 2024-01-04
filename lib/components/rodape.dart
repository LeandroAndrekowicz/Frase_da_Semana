import 'package:flutter/material.dart';


class Rodape extends StatelessWidget {
  const Rodape({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        constraints: const BoxConstraints.expand(height: 50),
        child: Stack(
          children: [
            Container(
              color: Colors.green,
              padding: const EdgeInsets.all(10.0),
            ),
            const Positioned(
              left: 45,
              bottom: 10, // Ajuste a posição vertical do ícone
              child: Home(),
            ),
            const Positioned(
              right: 45,
              bottom: 10, // Ajuste a posição vertical do ícone
              child: List(),
            ),
          ],
        ),
      ),
    );
  }
}



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.house_sharp, color: Colors.green),
    );
  }
}

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.list, color: Colors.green),
    );
  }
}
