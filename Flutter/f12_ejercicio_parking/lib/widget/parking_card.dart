import 'package:f12_ejercicio_parking/model/parking_list_response/result.dart';
import 'package:flutter/material.dart';

class ParkingCard extends StatelessWidget {
  const ParkingCard({super.key, required this.parking});
  final Result parking;

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
                parking.nombre!,
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
