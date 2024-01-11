import 'package:ejercicio_03_restaurantlist/widget/card_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [
        CardItem(
            img:
                'http://restespana.es/wp-content/uploads/2018/08/restaurante-espana-slide-01.jpg',
            name: 'El Italiano',
            rating: 5,
            address: "Cº San Jacinto",
            price: 16.50),
        CardItem(
            img:
                'https://www.guiarepsol.com/content/dam/repsol-guia/contenidos-imagenes/comer/nuestros-favoritos/rest-kinu-sevilla/01Kinu.jpg.transform/rp-rendition-md/image.jpg',
            name: 'Basushi',
            rating: 4,
            address: "Cº Asturias",
            price: 13),
        CardItem(
            img:
                'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2022/01/31/16436585396739.jpg',
            name: 'Wanyun',
            rating: 4,
            address: "Cº Algeciras",
            price: 15.20),
        CardItem(
            img:
                'https://sevilla.abc.es/contenidopromocionado/wp-content/uploads/sites/2/2019/05/portada-wp-porvenir.jpg',
            name: 'Bar Manolo',
            rating: 5,
            address: "Cº de Mallorca",
            price: 10.70),
      ]),
    );
  }
}
