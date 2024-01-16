import 'package:f09_ejercicio_navigation/widget/car_item.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatelessWidget {
  const CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score Screen'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(children: [CardItem(), CardItem()]),
    );
  }
}
