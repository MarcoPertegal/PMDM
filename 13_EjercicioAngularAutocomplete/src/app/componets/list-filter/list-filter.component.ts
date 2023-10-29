import { Component, OnInit } from '@angular/core';
import { Character } from 'src/app/models/rickandmorty-list.interface';
import { RickandmortyService } from 'src/app/services/rickandmorty.service';

@Component({
  selector: 'app-list-filter',
  templateUrl: './list-filter.component.html',
  styleUrls: ['./list-filter.component.css']
})
export class ListFilterComponent implements OnInit {


  //sustituir por la ultima respuesra del chat y decirle que a esa respuesta la adapte a el material 
  //restablecer pestañas de google







  /*
  characterList: Character[] = [];
  

  constructor(private rickandmortyService: RickandmortyService) { }

  ngOnInit(): void {
    this.rickandmortyService.getRickandmortyList().subscribe(resp => {
      this.characterList = resp.results;
    })
  }*/
}
