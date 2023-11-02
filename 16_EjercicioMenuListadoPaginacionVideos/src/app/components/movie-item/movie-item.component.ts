import { Component, EventEmitter, Input } from '@angular/core';
import { Movie } from 'src/app/models/movie.interface';

@Component({
  selector: 'app-movie-item',
  templateUrl: './movie-item.component.html',
  styleUrls: ['./movie-item.component.css']
})
export class MovieItemComponent {

  @Input() movie!: Movie;


  getMovieImage() {
    return `https://image.tmdb.org/t/p/w500/${this.movie.poster_path}`;
  }

}
