import { Component, EventEmitter, Input, Output } from '@angular/core';
import { MovieTopRated } from 'src/app/models/movie-top-ranked.interface';

@Component({
  selector: 'app-movie-top-rated-item',
  templateUrl: './movie-top-rated-item.component.html',
  styleUrls: ['./movie-top-rated-item.component.css']
})
export class MovieTopRatedItemComponent {
  @Input() movieTopRated!: MovieTopRated;
  @Output() movieClick = new EventEmitter<number>();

  getMovieImage() {
    return `https://image.tmdb.org/t/p/w500/${this.movieTopRated.poster_path}`;
  }

  viewMovieDetail() {
    this.movieClick.emit(this.movieTopRated.id);
  }
}
