import 'package:f11_ejercicio_listviewbuilder_skeleton/models/pokemon_response/pokemon_response.dart';
import 'package:f11_ejercicio_listviewbuilder_skeleton/widget/pokemon_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<PokemonResponse> fetchPokemon() async {
  final response =
      await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/ditto'));

  if (response.statusCode == 200) {
    return PokemonResponse.fromJson(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

class PokemonWidget extends StatefulWidget {
  const PokemonWidget({super.key});

  @override
  State<PokemonWidget> createState() => _PockemonWidgetState();
}

class _PockemonWidgetState extends State<PokemonWidget> {
  late Future<PokemonResponse> pokemon;

  @override
  void initState() {
    super.initState();
    pokemon = fetchPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder<PokemonResponse>(
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
