import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActorItem extends StatelessWidget {
  final String img;
  final String name;
  final String surname;
  const ActorItem(
      {super.key,
      required this.img,
      required this.name,
      required this.surname});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(img),
          Text(name, style: GoogleFonts.lato(fontWeight: FontWeight.bold)),
          Text(
            surname,
            style: GoogleFonts.lato(fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
