import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { MovieDetailsResponse } from 'src/app/models/movie-details.interface';
import { Video } from 'src/app/models/movie-video.interface';
import { MovieService } from 'src/app/services/movie.service';

@Component({
  selector: 'app-movie-details',
  templateUrl: './movie-details.component.html',
  styleUrls: ['./movie-details.component.css']
})
export class MovieDetailsComponent implements OnInit {
  movieId!: number;
  movieDetails!: MovieDetailsResponse;
  movieVideo!: Video;

  constructor(private route: ActivatedRoute, private movieService: MovieService) { }

  ngOnInit() {
    //Metodo de route para conseguir el id pasado desde el movie item
    this.route.paramMap.subscribe(params => {
      const idParam = params.get('id');
      if (idParam) {
        //con el + se combierte de string a numeric
        this.movieId = +idParam;
        this.loadMovieDetails(this.movieId);
      }
    });
  }

  loadMovieDetails(movieId: number) {
    this.movieService.getDetailsById(movieId).subscribe(resp => {
      this.movieDetails = resp;
    });
  }
  loadMovieVideo() {
    if (this.movieDetails.video) {
      this.movieService.getVideoById(this.movieId).subscribe(resp => {
        this.movieVideo = resp.results[0];
        return `https://www.youtube.com/embed/${this.movieVideo.key}`;
      });
    }
  }
}
