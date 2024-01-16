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
            children: <Widget>[
              TextButton(
                  onPressed: () => {},
                  child: const Text(
                    'El más barato buena puntuación',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 15, 106, 60),
                      fontSize: 10,
                    ),
                  )),
              TextButton(
                  onPressed: () => {},
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 15, 106, 60),
                      fontSize: 10,
                    ),
                  ))
            ],
          ),
          const Image(
              image: NetworkImage(
                  'https://cdn.motor1.com/images/mgl/q4XG1/s1/pagani-zonda-revolucion-5-in-vendita-all-asta.jpg')),
          const Text("Zonda"),
          const Text("asdfasfsdf f sdfsdgsdgdsgggh"),
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
          const Row(children: [
            Text("42"),
            Text("SELECCIONAR"),
          ])
        ],
      ),
    );
  }
}
