import 'package:f13_ejercicio_themoviedb_navigation/model/movie_detail_response/movie_detail_response.dart';
import 'package:flutter/material.dart';

class MovieDetailItem extends StatelessWidget {
  const MovieDetailItem({super.key, required this.movieDetail});
  final MovieDetailResponse movieDetail;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(movieDetail.title!, style: const TextStyle(fontSize: 10)),
          Image.network(
            'https://media.themoviedb.org/t/p/w300_and_h450_bestv2${movieDetail.posterPath!}',
            width: 250,
            height: 225,
            fit: BoxFit.contain,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(movieDetail.releaseDate!,
                  style: const TextStyle(fontSize: 10)),
              Text(movieDetail.voteAverage.toString(),
                  style: const TextStyle(fontSize: 20)),
            ],
          ),
        ],
      ),
    );
  }
}
