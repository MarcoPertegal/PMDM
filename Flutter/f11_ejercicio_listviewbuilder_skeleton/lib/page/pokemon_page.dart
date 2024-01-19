import 'package:flutter/material.dart';
import 'package:f11_ejercicio_listviewbuilder_skeleton/models/pokemon_list_response/result.dart';
import 'package:f11_ejercicio_listviewbuilder_skeleton/widget/pokemon_item_widget.dart';

class PokemonPage extends StatefulWidget {
  const PokemonPage({super.key, required this.pokemonList});
  final List<Result> pokemonList;
  @override
  State<PokemonPage> createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pokemons'),
          centerTitle: true,
        ),
        body: Container(
          child: ListView.builder(
              itemCount: widget.pokemonList.length,
              itemBuilder: (context, index) {
                return PokemonItemWidget(
                    pokemonName: widget.pokemonList[index].name!);
              }),
        ));
  }
}
