import 'package:f13_ejercicio_themoviedb_navigation/model/movie_list_response/result.dart';
import 'package:f13_ejercicio_themoviedb_navigation/page/movie_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key, required this.movie});
  final Result movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MovieDetailPage(id: movie.id!)),
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
                        'https://media.themoviedb.org/t/p/w300_and_h450_bestv2${movie.posterPath}',
                    width: 150,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ],
              )),
        ),
      ),
    );

    /*
    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            SizedBox(
              height: 200.0,
              child: Image.network(
                'https://media.themoviedb.org/t/p/w300_and_h450_bestv2${movie.posterPath}',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text(movie.title!),
            ),
            Container(
              child: ElevatedButton(
                child: const Text('View Details'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MovieDetailPage(id: movie.id!)),
                  );
                },
              ),
            ),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popularity: ${movie.popularity.toString()}',
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 18, 65, 220),
                            fontSize: 12,
                          )),
                      Text('Plazar libres: ${movie.releaseDate.toString()}',
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
