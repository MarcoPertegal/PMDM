import 'package:f11_ejercicio_listviewbuilder_skeleton/models/pokemon_item_response/pokemon_item_response.dart';
import 'package:flutter/material.dart';

class PokemonItem extends StatelessWidget {
  const PokemonItem({super.key, required this.pokemonItem});
  final PokemonItemResponse pokemonItem;
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
                '${pokemonItem.name}',
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
