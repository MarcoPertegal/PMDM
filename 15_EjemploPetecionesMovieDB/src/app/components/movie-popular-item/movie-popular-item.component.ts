import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Movie } from 'src/app/models/movie-popular.interface';

@Component({
  selector: 'app-movie-popular-item',
  templateUrl: './movie-popular-item.component.html',
  styleUrls: ['./movie-popular-item.component.css']
})
export class MoviePopularItemComponent {
  @Input() movie!: Movie;
  @Output() movieClick = new EventEmitter<number>();

  getMovieImage() {
    return `https://image.tmdb.org/t/p/w500/${this.movie.poster_path}`;
  }

  viewMovieDetail() {
    this.movieClick.emit(this.movie.id);
  }
}
