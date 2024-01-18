import 'package:flutter/material.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pokemon List',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 16,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 219, 140, 243),
      ),
      body: ListView(children: const []),
    );
  }
}
