import 'package:f13_ejercicio_themoviedb_navigation/widget/movie_list_widget/movie_list_widget.dart';
import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 300,
          width: double.infinity,
          child: MovieListWidget(),
        ),
      ],
    );
  }
}
