import { Component, Input, OnInit, Output, EventEmitter } from '@angular/core';
import { Router } from '@angular/router';
import { Movie } from '../../../models/movie-list.interface';
import { AccountService } from '../../../services/account.service';

@Component({
  selector: 'app-movie-item-list',
  templateUrl: './movie-item-list.component.html',
  styleUrls: ['./movie-item-list.component.css']
})
export class MovieItemListComponent implements OnInit {
  @Input() movie!: Movie;
  id!: number;
  favoriteIds!: string | null;
  isFavoriteMovie: boolean = false;
  @Output() addItemToList = new EventEmitter();


  constructor(private router: Router, private accountService: AccountService) { }

  ngOnInit() {
    const isloggedIn = localStorage.getItem('isLoggedIn');

    if (isloggedIn == 'true') {
      this.favoriteIds = localStorage.getItem('FAVORITE_IDS');
      const arrayFavoriteIds = this.favoriteIds!.split(',');
      this.isFavoriteMethod(arrayFavoriteIds);
    }

  }

  getImage() {
    return `https://www.themoviedb.org/t/p/w220_and_h330_face${this.movie.poster_path}`
  }

  addToFavorites(id: number) {
    this.accountService.addMovieToFovorites(id).subscribe(() => {
      console.log("Película con id:" + id + " agregada a favoritos");
    });
  }

  isFavoriteMethod(arrayFavoriteIds: string[]) {
    this.isFavoriteMovie = arrayFavoriteIds.includes(this.movie.id.toString());
  }

  deleteFromFavorites(id: number) {
    this.accountService.deleteMovieFromFovorites(id).subscribe(() => {
      console.log("Película con id:" + id + " eliminada de favoritos");
    });
  }
  openAddModal() {
    this.addItemToList.emit(this.movie.id.toString());
  }


}
