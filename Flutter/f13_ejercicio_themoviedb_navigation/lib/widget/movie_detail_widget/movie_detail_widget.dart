import 'package:f13_ejercicio_themoviedb_navigation/model/movie_detail_response/movie_detail_response.dart';
import 'package:f13_ejercicio_themoviedb_navigation/model/movie_videos_response/movie_videos_response.dart';
import 'package:f13_ejercicio_themoviedb_navigation/widget/movie_detail_widget/movie_detail_item.dart';
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

Future<MovieVideosResponse> fetchMovieVideo(int id) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/${id}/videos?api_key=18c6dd9c77bfcc97e862001655abfba9'));
  if (response.statusCode == 200) {
    final toReturn = MovieVideosResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load album');
  }
}

class MovieDetailWidget extends StatefulWidget {
  const MovieDetailWidget({super.key, required this.id});
  final int id;
  @override
  State<MovieDetailWidget> createState() => _MovieDetailWidgetState();
}

class _MovieDetailWidgetState extends State<MovieDetailWidget> {
  late Future<MovieDetailResponse> movieDetail;
  late Future<MovieVideosResponse> movieVideo;

  @override
  void initState() {
    super.initState();
    movieDetail = fetchMovieDetail(widget.id);
    movieVideo = fetchMovieVideo(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder<List<dynamic>>(
        future: Future.wait([movieDetail, movieVideo]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final List<dynamic> data = snapshot.data!;
            if (data[0] is MovieDetailResponse &&
                data[1] is MovieVideosResponse) {
              return MovieDetailItem(
                movieDetail: data[0] as MovieDetailResponse,
                movieVideo: data[1] as MovieVideosResponse,
              );
            } else {
              return Text('Unexpected data types');
            }
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
