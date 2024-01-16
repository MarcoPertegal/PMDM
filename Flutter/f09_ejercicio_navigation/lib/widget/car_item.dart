import 'package:f09_ejercicio_navigation/screen/car_detail_screen.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                  onPressed: () => {},
                  child: const Text(
                    'El más barato buena puntuación',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 15, 106, 60),
                      fontSize: 12,
                    ),
                  )),
              TextButton(
                  onPressed: () => {},
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 15, 106, 60),
                      fontSize: 12,
                    ),
                  ))
            ],
          ),
          const Image(
              image: NetworkImage(
                  'https://cdn.motor1.com/images/mgl/q4XG1/s1/pagani-zonda-revolucion-5-in-vendita-all-asta.jpg')),
          Padding(
            padding: EdgeInsets.all(12.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Zonda",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                ),
              ),
              const Text(
                "2-3 puertas, pagani zonda c12",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 123, 123, 123),
                  fontSize: 12,
                ),
              ),
              const Row(
                children: [
                  Icon(Icons.fitbit),
                  Text("Man."),
                  Icon(Icons.ac_unit),
                  Text("A/A"),
                  Icon(Icons.person),
                  Text("4"),
                  Icon(Icons.wallet_travel),
                  Text("1"),
                ],
              ),
              Divider(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(
                  "42",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 0, 101, 183),
                    fontSize: 16,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CarDetailScreen()),
                      );
                    },
                    child: const Text(
                      'Cancelar',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 15, 106, 60),
                        fontSize: 12,
                      ),
                    ))
              ])
            ]),
          ),
        ],
      ),
    );
  }
}
