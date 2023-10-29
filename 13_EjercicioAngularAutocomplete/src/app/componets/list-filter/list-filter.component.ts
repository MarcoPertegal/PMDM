import { Component, OnInit } from '@angular/core';
import { Character } from 'src/app/models/rickandmorty-list.interface';
import { RickandmortyService } from 'src/app/services/rickandmorty.service';

@Component({
  selector: 'app-list-filter',
  templateUrl: './list-filter.component.html',
  styleUrls: ['./list-filter.component.css']
})
export class ListFilterComponent implements OnInit {

  characterList: Character[] = [];

  constructor(private rickandmortyService: RickandmortyService) { }

  //da error porque el metodo getRickandmortyList() del servicio debe recibir un nombre
  ngOnInit(): void {
    this.rickandmortyService.getRickandmortyList().subscribe(resp => {
      this.characterList = resp.results;
    })
  }
}
