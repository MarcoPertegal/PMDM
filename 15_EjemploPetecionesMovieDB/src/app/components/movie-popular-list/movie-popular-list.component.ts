import { Component } from '@angular/core';
import { Movie } from 'src/app/models/movie-popular.interface';
import { MoviePopularService } from 'src/app/services/movie-popular.service';

@Component({
  selector: 'app-movie-popular-list',
  templateUrl: './movie-popular-list.component.html',
  styleUrls: ['./movie-popular-list.component.css']
})
export class MoviePopularListComponent {
  moviePopularList: Movie[] = [];

  constructor(private moviePopularService: MoviePopularService) { }

  ngOnInit(): void {
    this.moviePopularService.getMoviePopularList().subscribe(resp => {
      this.moviePopularList = resp.results;
    })
  }
}
