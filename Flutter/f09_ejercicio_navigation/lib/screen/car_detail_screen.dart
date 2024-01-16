import 'package:f09_ejercicio_navigation/widget/car_item.dart';
import 'package:flutter/material.dart';

class CarDetailScreen extends StatelessWidget {
  final CarItem carItem;

  const CarDetailScreen({super.key, required this.carItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Image.network(carItem.urlImagen),
            Text(
              carItem.modelo,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 24,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      carItem.numPuertas,
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 92, 92, 92),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      carItem.tipoCoche,
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 92, 92, 92),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      carItem.precio.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 92, 92, 92),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      carItem.tag,
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 92, 92, 92),
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
