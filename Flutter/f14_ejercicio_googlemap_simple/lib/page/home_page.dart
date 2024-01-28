import 'package:f14_ejercicio_googlemap_simple/widget/map_maker_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salesianos Triana'),
        centerTitle: true,
      ),
      body: MapMakerItem(),
    );
  }
}
