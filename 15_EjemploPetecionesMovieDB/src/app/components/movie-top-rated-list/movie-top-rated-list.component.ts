import { Component } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { MovieDetailsResponse } from 'src/app/models/movie-details.interface';
import { Movie } from 'src/app/models/movie-top-ranked.interface';
import { MovieTopRankedService } from 'src/app/services/movie-top-ranked.service';

@Component({
  selector: 'app-movie-top-rated-list',
  templateUrl: './movie-top-rated-list.component.html',
  styleUrls: ['./movie-top-rated-list.component.css']
})
export class MovieTopRatedListComponent {
  movieTopRatedList: Movie[] = [];
  selectedMovie: MovieDetailsResponse | undefined;

  constructor(private movieTopRankedService: MovieTopRankedService, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.movieTopRankedService.getMovieTopRanked().subscribe(resp => {
      this.movieTopRatedList = resp.results;
    })
  }

  openModal(id: number, movieTopRatedModal: any) {
    this.movieTopRankedService.getMovieTopRatedById(id).subscribe(resp => {
      this.selectedMovie = resp;
      this.modalService.open(movieTopRatedModal);
    });
  }

}
