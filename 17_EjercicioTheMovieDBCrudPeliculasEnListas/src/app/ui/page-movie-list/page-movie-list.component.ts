import { Component, OnInit } from '@angular/core';
import { Movie } from '../../models/movie-list.interface';
import { MovieService } from '../../services/movie.service';
import { customList } from '../../models/account-custom-list.interface';
import { AccountService } from '../../services/account.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-page-movie-list',
  templateUrl: './page-movie-list.component.html',
  styleUrls: ['./page-movie-list.component.css']
})
export class PageMovieListComponent implements OnInit {
  movieList: Movie[] = [];
  pageNumber: number = 1;
  count: number = 0;
  currentPage: number = 1;
  movieCustomList: customList[] = [];
  movieId!: number;

  constructor(private service: MovieService, private accountService: AccountService, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.loadNewPage();
  }

  loadNewPage() {
    this.service.getPopularListPage(this.pageNumber).subscribe(resp => {
      this.movieList = resp.results;
      this.count = resp.total_results;
    })

  }

  openModal(id: string, addItemToCustomList: any) {
    this.accountService.getCustomLists().subscribe(resp => {
      this.movieCustomList = resp.results;
      this.modalService.open(addItemToCustomList);
    });
    this.movieId = +id;
  }

  addToCustomlist(customListId: number) {
    this.accountService.addToCustomList(this.movieId, customListId).subscribe(resp => {
      console.log(resp.status_message);
      window.location.reload();
    },
      error => {
        if (error.status === 403)
          window.alert('Error: Duplicated element');
      }
    );
    //window.location.reload();
  }
}
