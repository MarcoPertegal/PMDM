import 'package:f13_ejercicio_themoviedb_navigation/model/movie_detail_response/movie_detail_response.dart';
import 'package:f13_ejercicio_themoviedb_navigation/model/movie_videos_response/movie_videos_response.dart';
import 'package:flutter/material.dart';

class MovieDetailItem extends StatelessWidget {
  const MovieDetailItem(
      {super.key, required this.movieDetail, required this.movieVideo});
  final MovieDetailResponse movieDetail;
  final MovieVideosResponse movieVideo;

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
          if (movieVideo.results != null && movieVideo.results!.isNotEmpty)
            Column(
              children: [
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: movieVideo.results!.length,
                    itemBuilder: (context, index) {
                      final video = movieVideo.results![index];
                      return ListTile(
                        title: Text(video.name ?? 'Unnamed Video'),
                        subtitle: Text('Type: ${video.type}'),
                        onTap: () {
                          // Handle video selection if needed
                        },
                      );
                    },
                  ),
                ),
              ],
            )
          else
            Text('The movie doesn\'t have any videos'),
        ],
      ),
    );
  }
}
