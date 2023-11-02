import { Component } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { MoviePopular } from 'src/app/models/movie-popular.interface';
import { MovieDetailsResponse } from 'src/app/models/movie-details.interface';
import { MoviePopularService } from 'src/app/services/movie-popular.service';

@Component({
  selector: 'app-movie-popular-list',
  templateUrl: './movie-popular-list.component.html',
  styleUrls: ['./movie-popular-list.component.css']
})
export class MoviePopularListComponent {
  moviePopularList: MoviePopular[] = [];
  selectedMovie!: MovieDetailsResponse;


  constructor(private moviePopularService: MoviePopularService, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.moviePopularService.getPopular().subscribe(resp => {
      this.moviePopularList = resp.results;
    })
  }

  openModal(id: number, moviePopularModal: any) {
    this.moviePopularService.getDetailsById(id).subscribe(resp => {
      this.selectedMovie = resp;
      this.modalService.open(moviePopularModal);
    });
  }
}
