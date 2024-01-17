import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Car List'),
        backgroundColor: Color.fromARGB(255, 215, 235, 249),
      ),
      body: ListView(children: [
        const CarItem(
            urlImagen:
                'https://cdn.motor1.com/images/mgl/q4XG1/s1/pagani-zonda-revolucion-5-in-vendita-all-asta.jpg',
            numPuertas: '2',
            tipoCoche: 'Hipercar',
            modelo: 'Pagani Zonda',
            precio: 3200000.0,
            numOfertas: 11,
            tag: 'Mayor Precio')
      ]),
    );
  }
}
