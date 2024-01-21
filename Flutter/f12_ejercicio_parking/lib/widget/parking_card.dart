import 'package:f12_ejercicio_parking/model/parking_list_response/result.dart';
import 'package:flutter/material.dart';

class ParkingCard extends StatelessWidget {
  const ParkingCard({super.key, required this.parking});
  final Result parking;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            ListTile(
              title: Text(
                parking.nombre!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                  'Num Aparcamiento: ${parking.idAparcamiento.toString()!}'),
              trailing: const Icon(Icons.local_parking,
                  color: Color.fromARGB(255, 18, 65, 220)),
            ),
            SizedBox(
              height: 200.0,
              child: Image.network(
                'https://www.parkingimagen.es/wp-content/uploads/2017/07/parking-1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text(parking.direccion!),
            ),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Plazas totales: ${parking.plazastota.toString()}',
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 18, 65, 220),
                            fontSize: 12,
                          )),
                      Text('Plazar libres: ${parking.plazaslibr.toString()}',
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 18, 65, 220),
                            fontSize: 12,
                          )),
                    ]))
          ],
        ));
  }
}
