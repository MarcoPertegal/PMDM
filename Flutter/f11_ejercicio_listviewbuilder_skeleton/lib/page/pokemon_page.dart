import 'package:f11_ejercicio_listviewbuilder_skeleton/widget/pokemon_widget.dart';
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
      body: ListView(children: const [PokemonWidget()]),
      /*body: ListView.builder(
        itemCount: items.length,
        prototypeItem: ListTile(
          title: Text(items.first),
        ),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
        //nose como adaptar esto nose si la lista es dinamica si hay que usar el pokemon item porque
        //si es dinamica con colocar aqui el estilo de la card se tendria que pintar muchas veces usando
        //el listView.Builder y demomneto solo estoy trabajando con la lista de pokemon despues habría que ver
        //usando la url que devuelve cada elemento de result como acceder a cada sprite
      ),*/
    );
  }
}
