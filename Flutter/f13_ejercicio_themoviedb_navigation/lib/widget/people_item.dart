import 'package:f13_ejercicio_themoviedb_navigation/model/poeple_list_response/result.dart';
import 'package:f13_ejercicio_themoviedb_navigation/page/people_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class PeopleItem extends StatelessWidget {
  const PeopleItem({super.key, required this.people});
  final Result people;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PeopleDetailPage(id: people.id!)),
        );
      },
      child: SizedBox(
        width: 150,
        height: 300,
        child: Card(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  const Center(
                    child: CircularProgressIndicator(),
                  ),
                  FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image:
                        'https://media.themoviedb.org/t/p/w300_and_h450_bestv2${people.profilePath}',
                    width: 150,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ],
              )),
        ),
      ),
    );

    /*return Card(
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
            Container(
              child: ElevatedButton(
                child: const Text('View Details'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PeopleDetailPage(id: people.id!)),
                  );
                },
              ),
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
                      Text('Sexo: ${people.gender.toString()}',
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 18, 65, 220),
                            fontSize: 12,
                          )),
                    ]))
          ],
        ));*/
  }
}
