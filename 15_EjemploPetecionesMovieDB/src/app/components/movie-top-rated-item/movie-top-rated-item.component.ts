import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Movie } from 'src/app/models/movie-top-ranked.interface';

@Component({
  selector: 'app-movie-top-rated-item',
  templateUrl: './movie-top-rated-item.component.html',
  styleUrls: ['./movie-top-rated-item.component.css']
})
export class MovieTopRatedItemComponent {
  @Input() movie!: Movie;
  @Output() movieClick = new EventEmitter<number>();

  getMovieImage() {
    return `https://image.tmdb.org/t/p/w500/${this.movie.poster_path}`;
  }

  viewMovieDetail() {
    this.movieClick.emit(this.movie.id);
  }
}
