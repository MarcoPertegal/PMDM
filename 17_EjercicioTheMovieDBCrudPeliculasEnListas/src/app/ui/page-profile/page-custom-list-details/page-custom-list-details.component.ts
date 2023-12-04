import { Component, Input, OnInit } from '@angular/core';
import { AccountService } from '../../../services/account.service';
import { ActivatedRoute } from '@angular/router';
import { AccountCustomListDetailsResponse, MovieOrSerie } from '../../../models/account-custom-list-details.interface';


@Component({
  selector: 'app-page-custom-list-details',
  templateUrl: './page-custom-list-details.component.html',
  styleUrl: './page-custom-list-details.component.css'
})
export class PageCustomListDetailsComponent implements OnInit {
  customListId!: number;
  customListDetails!: AccountCustomListDetailsResponse;
  movieOrSerieList: MovieOrSerie[] = [];

  constructor(private route: ActivatedRoute, private accountService: AccountService) { }

  ngOnInit(): void {
    this.route.paramMap.subscribe(params => {
      const idParam = params.get('id');
      if (idParam) {
        this.customListId = +idParam; //el mas es para pasar de string a number para hacer la peticion
        this.accountService.getCustomListDetails(this.customListId).subscribe(resp => {
          this.customListDetails = resp;
          this.movieOrSerieList = resp.items;
          console.log("aaaaa" + this.movieOrSerieList);
        })
      }
    });
  }

  getImage(poster_path: any) {
    return `https://www.themoviedb.org/t/p/w220_and_h330_face${poster_path}`
  }

  clearList(customListId: number) {
    this.accountService.clearCustomList(customListId).subscribe();
  }

}
