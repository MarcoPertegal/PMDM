import { Component } from '@angular/core';
import { Movie } from 'src/app/models/movie-popular.interface';
import { MovieTopRankedService } from 'src/app/services/movie-top-ranked.service';

@Component({
  selector: 'app-movie-top-rated-list',
  templateUrl: './movie-top-rated-list.component.html',
  styleUrls: ['./movie-top-rated-list.component.css']
})
export class MovieTopRatedListComponent {
  movieTopRatedList: Movie[] = [];

  constructor(private movieTopRankedService: MovieTopRankedService) { }

  ngOnInit(): void {
    this.movieTopRankedService.getMovieTopRanked().subscribe(resp => {
      this.movieTopRatedList = resp.results;
    })
  }

}
