import 'package:f11_ejercicio_listviewbuilder_skeleton/widget/pokemon_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/pokemon_item_response/pokemon_item_response.dart';

Future<PokemonItemResponse> fetchPokemon(String name) async {
  final response =
      await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/$name'));

  if (response.statusCode == 200) {
    return PokemonItemResponse.fromJson(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

class PokemonItemWidget extends StatefulWidget {
  const PokemonItemWidget({super.key, required this.pokemonName});
  final String pokemonName;
  @override
  State<PokemonItemWidget> createState() => _PokemonItemWidgetState();
}

class _PokemonItemWidgetState extends State<PokemonItemWidget> {
  late Future<PokemonItemResponse> pokemon;

  @override
  void initState() {
    super.initState();
    pokemon = fetchPokemon(widget.pokemonName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder<PokemonItemResponse>(
        future: pokemon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PokemonItem(pokemon: snapshot.data!);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
