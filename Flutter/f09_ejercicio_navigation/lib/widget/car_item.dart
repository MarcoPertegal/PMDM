import 'package:f09_ejercicio_navigation/screen/car_detail_screen.dart';
import 'package:flutter/material.dart';

class CarItem extends StatelessWidget {
  final String urlImagen, numPuertas, tipoCoche, modelo, tag;
  final int numOfertas;
  final double precio;

  const CarItem(
      {super.key,
      required this.urlImagen,
      required this.numPuertas,
      required this.tipoCoche,
      required this.modelo,
      required this.precio,
      required this.numOfertas,
      required this.tag});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tag,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 15, 106, 60),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 150),
                    Text(
                      '$numOfertas ofertas',
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 123, 123, 123),
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Image(image: NetworkImage('')),
          Padding(
            padding: EdgeInsets.all(12.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                modelo,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                ),
              ),
              Text(
                tipoCoche,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 123, 123, 123),
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Icon(Icons.fitbit),
                  Text("Man."),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.ac_unit),
                  Text("A/A"),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.person),
                  Text("4"),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.wallet_travel),
                  Text("1"),
                ],
              ),
              Divider(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "$precio €",
                  style: const TextStyle(
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
                          builder: (context) => CarDetailScreen(
                              carItem: CarItem(
                                  urlImagen: urlImagen,
                                  numPuertas: numPuertas,
                                  tipoCoche: tipoCoche,
                                  modelo: modelo,
                                  precio: precio,
                                  numOfertas: numOfertas,
                                  tag: tag))),
                    );
                  },
                  child: const Text(
                    "SELECCIONAR",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 0, 101, 183),
                      fontSize: 16,
                    ),
                  ),
                )
              ])
            ]),
          ),
        ],
      ),
    );
  }
}
