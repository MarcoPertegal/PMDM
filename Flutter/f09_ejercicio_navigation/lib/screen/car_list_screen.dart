import 'package:f09_ejercicio_navigation/widget/car_item.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatelessWidget {
  const CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Car List'),
        backgroundColor: Color.fromARGB(255, 215, 235, 249),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: ListView(children: [
        const CarItem(
            urlImagen:
                'https://cdn.motor1.com/images/mgl/q4XG1/s1/pagani-zonda-revolucion-5-in-vendita-all-asta.jpg',
            numPuertas: '2',
            tipoCoche: 'Hipercar',
            modelo: 'Pagani Zonda',
            precio: 3200000.0,
            numOfertas: 11,
            tag: 'Mayor Precio'),
        const CarItem(
            urlImagen:
                'https://www.sportscarmarket.com/wp-content/uploads/2017/10/1996-porsche-911-gt2-front.jpg',
            numPuertas: '3',
            tipoCoche: 'Sport',
            modelo: 'Porsche 993 GT2',
            precio: 205000.0,
            numOfertas: 23,
            tag: 'Menor Precio'),
        const CarItem(
            urlImagen:
                'https://thedriver.it/articoli/foto-hd/mazda-rx7-storia-del-modello-6.jpg',
            numPuertas: '3',
            tipoCoche: 'Sport',
            modelo: 'Mazda RX 7',
            precio: 53000.0,
            numOfertas: 6,
            tag: 'Menor Precio')
      ]),
    );
  }
}
