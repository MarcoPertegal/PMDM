import 'package:f13_ejercicio_themoviedb_navigation/model/movie_list_response/movie_list_response.dart';
import 'package:f13_ejercicio_themoviedb_navigation/widget/movie_list_widget/movie_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<MovieListResponse> fetchMovie() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/popular?api_key=18c6dd9c77bfcc97e862001655abfba9'));
  if (response.statusCode == 200) {
    final toReturn = MovieListResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load album');
  }
}

class MovieListWidget extends StatefulWidget {
  const MovieListWidget({super.key});

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  late Future<MovieListResponse> movieList;

  @override
  void initState() {
    super.initState();
    movieList = fetchMovie();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        child: FutureBuilder<MovieListResponse>(
          future: movieList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data!.results!.length,
                  itemBuilder: (context, index) {
                    return MovieItem(
                      movie: snapshot.data!.results![index],
                    );
                  });
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ));
  }
}
