import 'package:f13_ejercicio_themoviedb_navigation/model/movie_detail_response/movie_detail_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<MovieDetailResponse> fetchMovieDetail(int id) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/${id}?api_key=18c6dd9c77bfcc97e862001655abfba9'));
  if (response.statusCode == 200) {
    final toReturn = MovieDetailResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load album');
  }
}

//se supone que se hace como en el movie detail widget pero sin algo de future que dijo migue future builder?
class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key, required this.movieDetail});
  final MovieDetailResponse movieDetail;

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  late Future<MovieDetailResponse> movieDetail;

  @override
  void initState() {
    super.initState();
    movieDetail = fetchMovieDetail(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder<MovieDetailResponse>(
        future: movieDetail,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              body: Text(movieDetail),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
/*
class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key, required this.movieDetail});
  final Future<MovieDetailResponse> movieDetail;

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(movieDetail),
    );
  }
}*/
