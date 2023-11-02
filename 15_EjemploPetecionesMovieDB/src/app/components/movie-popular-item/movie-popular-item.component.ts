import { Component, EventEmitter, Input, Output } from '@angular/core';
import { MoviePopular } from 'src/app/models/movie-popular.interface';

@Component({
  selector: 'app-movie-popular-item',
  templateUrl: './movie-popular-item.component.html',
  styleUrls: ['./movie-popular-item.component.css']
})
export class MoviePopularItemComponent {
  @Input() moviePopular!: MoviePopular;
  @Output() movieClick = new EventEmitter<number>();

  getMovieImage() {
    return `https://image.tmdb.org/t/p/w500/${this.moviePopular.poster_path}`;
  }

  viewMovieDetail() {
    this.movieClick.emit(this.moviePopular.id);
  }
}
