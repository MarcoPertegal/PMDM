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

  ngOnInit(): void {
    this.rickandmortyService.getRickandmortyList().subscribe(resp => {
      this.characterList = resp.results;
    })
  }
  //NO HACEN FALTA DOS PETICIONES GET SINO QUE UNO PARA EL LISTADO Y OTRA PARA EL DETALLE

  /*
  myControl = new FormControl('');
  options: string[] = ['One', 'Two', 'Three'];
  filteredOptions: Observable<string[]>;

  ngOnInit() {
    this.filteredOptions = this.myControl.valueChanges.pipe(
      startWith(''),
      map(value => this._filter(value || '')),
    );
  }

  private _filter(value: string): string[] {
    const filterValue = value.toLowerCase();

    return this.options.filter(option => option.toLowerCase().includes(filterValue));
  }
  */
}
