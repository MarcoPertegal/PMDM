import 'package:f11_ejercicio_listviewbuilder_skeleton/models/pokemon_response/pokemon_response.dart';
import 'package:flutter/material.dart';

class PokemonItem extends StatelessWidget {
  const PokemonItem({super.key, required this.pokemon});

  final PokemonResponse pokemon;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      pokemon.id!.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 177, 33, 196),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 150),
                    Text(
                      pokemon.isDefault!.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 123, 123, 123),
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Image(
            image: NetworkImage(pokemon.sprites!.frontDefault!),
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                pokemon.name!,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                ),
              ),
              Text(
                '${pokemon.height!} meters',
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 123, 123, 123),
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  '${pokemon.baseExperience!} Base Experience',
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 0, 101, 183),
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Girar",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 0, 101, 183),
                      fontSize: 16,
                    ),
                  ),
                )
              ])
            ]),
          ),
        ],
      ),
    );
  }
}
