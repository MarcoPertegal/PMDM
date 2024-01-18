import 'package:f11_ejercicio_listviewbuilder_skeleton/models/pokemon_list_response/pokemon_list_response.dart';
import 'package:flutter/material.dart';

class PokemonItem extends StatelessWidget {
  const PokemonItem({super.key, required this.pokemon});

  final PokemonListResponse pokemon;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(''),
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                pokemon.results![1].name!,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
