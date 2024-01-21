import 'package:f11_ejercicio_listviewbuilder_skeleton/models/pokemon_list_response/pokemon_list_response.dart';
import 'package:f11_ejercicio_listviewbuilder_skeleton/page/pokemon_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:skeletonizer/skeletonizer.dart';

Future<PokemonListResponse> fetchPokemon() async {
  final response =
      await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/'));
  if (response.statusCode == 200) {
    final toReturn = PokemonListResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load album');
  }
}

class PokemonListWidget extends StatefulWidget {
  const PokemonListWidget({super.key});

  @override
  State<PokemonListWidget> createState() => _PokemonListWidgetState();
}

class _PokemonListWidgetState extends State<PokemonListWidget> {
  late Future<PokemonListResponse> pokemonList;
  @override
  void initState() {
    super.initState();
    pokemonList = fetchPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder<PokemonListResponse>(
        future: pokemonList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PokemonPage(pokemonList: snapshot.data!.results!);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
