import 'package:f13_ejercicio_themoviedb_navigation/widget/movie_detail_widget/movie_detail_widget.dart';
import 'package:flutter/material.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MovieDetailWidget(id: id),
    );
  }
}
