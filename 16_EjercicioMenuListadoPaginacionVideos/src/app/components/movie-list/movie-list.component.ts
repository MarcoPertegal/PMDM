import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Movie } from 'src/app/models/movie.interface';
import { MovieService } from 'src/app/services/movie.service';

@Component({
  selector: 'app-movie-list',
  templateUrl: './movie-list.component.html',
  styleUrls: ['./movie-list.component.css']
})
export class MovieListComponent implements OnInit {
  movieList: Movie[] = [];
  pageNumber: number = 1;
  count: number = 0;
  currentPage: number = 1;

  constructor(private movieService: MovieService) { }

  ngOnInit(): void {
    this.loadNewPage();
  }
  loadNewPage() {
    this.movieService.getMovies(this.pageNumber).subscribe(resp => {
      this.movieList = resp.results;
      this.count = resp.total_results;
    })
  }



}
