import { Component, OnInit } from '@angular/core';
import { FormControl } from '@angular/forms';
import { Observable, map, startWith } from 'rxjs';
import { Character } from 'src/app/models/rickandmorty-list.interface';
import { RickandmortyService } from 'src/app/services/rickandmorty.service';

@Component({
  selector: 'app-list-filter',
  templateUrl: './list-filter.component.html',
  styleUrls: ['./list-filter.component.css']
})
export class ListFilterComponent implements OnInit {
  characterList!: Character[];
  myControl = new FormControl<string | Character>('');
  filteredOptions !: Observable<Character[]>;

  constructor(private rickandmortyService: RickandmortyService) { }

  ngOnInit(): void {
    this.rickandmortyService.getRickandmortyList().subscribe(resp => {
      this.characterList = resp.results;
      this.filteredOptions = this.myControl.valueChanges.pipe(
        startWith(''),
        map(value => {
          const characterName = typeof value === 'string' ? value : value?.name;
          return characterName ? this._filter(characterName as string) : this.characterList;
        })
      );
    })
  }

  private _filter(name: string): Character[] {
    const filterValue = name.toLowerCase();

    return this.characterList.filter(c => c.name.toLowerCase().includes(filterValue));
  }
}
