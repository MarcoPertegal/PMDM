import { Component, OnInit } from '@angular/core';
import { Movie } from '../../models/movie-list.interface';
import { AccountService } from '../../services/account.service';
import { customList } from '../../models/account-custom-list.interface';
import { Router } from '@angular/router';
import { FormControl, FormGroup } from '@angular/forms';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';


@Component({
  selector: 'app-page-profile',
  templateUrl: './page-profile.component.html',
  styleUrls: ['./page-profile.component.css']
})
export class PageProfileComponent implements OnInit {
  active = 1;
  movieListFavorite: Movie[] = [];
  movieListWatchList: Movie[] = [];
  movieCustomList: customList[] = [];
  pageNumberFavorite: number = 1;
  pageNumberWatchList: number = 1;
  countFavorite: number = 0;
  countWatchList: number = 0;
  selectedCustomListId!: number;


  constructor(
    private modalService: NgbModal,
    private accountService: AccountService,
    private router: Router
  ) {
  }

  ngOnInit(): void {
    this.accountService.getFavorites().subscribe(resp => {
      this.movieListFavorite = resp.results;
      const favoriteIds = this.movieListFavorite.map(movie => movie.id);
      localStorage.setItem('FAVORITE_IDS', favoriteIds.toString());
    });
    this.accountService.getWatchListMovies().subscribe(resp => {
      this.movieListWatchList = resp.results;
      const watchListsIds = this.movieListWatchList.map(movie => movie.id);
      localStorage.setItem('WATCHLISTS_IDS', watchListsIds.toString());
    });
    this.accountService.getCustomLists().subscribe(resp => {
      this.movieCustomList = resp.results;
    });
  }

  getUsername() {
    return localStorage.getItem('USERNAME');
  }
  getAvatar() {
    return localStorage.getItem('AVATAR');
  }

  listDetails(customListId: number) {
    this.router.navigate([`/page-custom-list-details/${customListId}`]);
  }

  closeModal() {
    this.modalService.dismissAll();
  }

  newCustomList = new FormGroup({
    name: new FormControl(''),
    description: new FormControl('')
  })

  createNewList() {
    this.accountService.createCustomList(this.newCustomList.value.name!, this.newCustomList.value.description!).subscribe(() => {
      this.closeModal();
      window.location.reload();
    });
  }

  openCreateModal(createCustomList: any) {
    this.modalService.open(createCustomList);
  }

  deleteList() {
    this.accountService.deleteCustomList(this.selectedCustomListId).subscribe(resp => {
      window.alert(resp.status_message);
      window.location.reload();
    });
  }

  openDeleteModal(customListId: number, deleteCustomList: any) {
    this.modalService.open(deleteCustomList);
    this.selectedCustomListId = customListId;
  }

}
