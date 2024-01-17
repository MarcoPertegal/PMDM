import 'package:f10_ejercicio_peticion_get_pokemon/widget/pokemon_widget.dart';
import 'package:flutter/material.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pokemon Card',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 16,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 219, 140, 243),
      ),
      body: ListView(children: const [PockemonWidget()]),
    );
  }
}
