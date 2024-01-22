import 'package:f13_ejercicio_themoviedb_navigation/model/poeple_list_response/result.dart';
import 'package:flutter/material.dart';

class PeopleItem extends StatelessWidget {
  const PeopleItem({super.key, required this.people});
  final Result people;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            SizedBox(
              height: 200.0,
              child: Image.network(
                'https://media.themoviedb.org/t/p/w300_and_h450_bestv2${people.profilePath!}',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text(people.name!),
            ),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popularity: ${people.popularity.toString()}',
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 18, 65, 220),
                            fontSize: 12,
                          )),
                      Text('Plazar libres: ${people.gender.toString()}',
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
