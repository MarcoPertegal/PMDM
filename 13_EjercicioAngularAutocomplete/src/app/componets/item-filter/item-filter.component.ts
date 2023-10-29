import { Component, Input } from '@angular/core';
import { Character } from 'src/app/models/rickandmorty-list.interface';

@Component({
  selector: 'app-item-filter',
  templateUrl: './item-filter.component.html',
  styleUrls: ['./item-filter.component.css']
})
export class ItemFilterComponent {
  @Input() character!: Character;

}
